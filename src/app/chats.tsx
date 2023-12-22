import { Link } from "expo-router";
import ChatsProvider, { useChatsContext } from "../contexts/chats.context";
import useChatStyles from "../hooks/useChatStyle";
import React from "react";
import { FlatList, View, StyleSheet, TouchableOpacity } from "react-native";
import { Appbar, FAB, Text, TextInput, useTheme } from "react-native-paper";
import AppbarBackAction from "../components/appbar.backaction";

export default function ChatsScreen() {
  return (
    <ChatsProvider>
      <_ScreenContent />
    </ChatsProvider>
  );
}

function _ScreenContent() {
  const styles = useChatStyles();
  const {
    connected,
    messages,
    newMessage,
    sendButtonEnabled,
    toggleDatabaseConnection,
    setNewMessage,
    sendMessage,
  } = useChatsContext();

  return (
    <View style={styles.scaffold}>
      <Appbar.Header style={styles.appbar}>
        <AppbarBackAction />
        <Appbar.Content title={"Chats"} />
        <Link href={"/logs"} asChild>
          <Appbar.Action icon="alert-circle" />
        </Link>
        <Appbar.Action
          icon={connected ? "plus" : "minus"}
          onPress={toggleDatabaseConnection}
        />
      </Appbar.Header>
      <FlatList
        style={styles.body}
        data={messages}
        renderItem={({ item, index }) => (
          <View key={index}>
            <Text>{item.text}</Text>
          </View>
        )}
      />

      <TextInput
        placeholder="Message"
        style={styles.newMessageInputBar}
        underlineColor="transparent"
        placeholderTextColor={"#626262"}
        contentStyle={styles.newMessageInputContent}
        value={newMessage}
        onChangeText={setNewMessage}
        right={
          <TextInput.Icon
            icon="send"
            color={"#2196F3"}
            size={26}
            disabled={!sendButtonEnabled}
            onPress={sendMessage}
          />
        }
        left={<TextInput.Icon icon="magnify" disabled />}
        mode="outlined"
        outlineStyle={styles.newMessageInputBarOutline}
        autoFocus
        textAlign={undefined}
      />
    </View>
  );
}
