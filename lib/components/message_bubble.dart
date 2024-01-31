import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final bool outgoingMessage;

  const MessageBubble({
    super.key,
    required this.message,
    required this.outgoingMessage,
  });

  const MessageBubble.incoming({
    super.key,
    required this.message,
  }) : outgoingMessage = false;

  const MessageBubble.outgoing({
    super.key,
    required this.message,
  }) : outgoingMessage = true;

  @override
  Widget build(context) {
    return outgoingMessage
        ? _OutgoingMessageBubble(message: message)
        : _IncomingMessageBubble(message: message);
  }
}

class _IncomingMessageBubble extends StatelessWidget {
  final String message;

  const _IncomingMessageBubble({required this.message});
  @override
  Widget build(context) {
    return FractionallySizedBox(
      alignment: Alignment.topLeft,
      widthFactor: 0.8,
      child: Card(
        elevation: 0,
        margin: const EdgeInsets.all(8),
        color: Theme.of(context).colorScheme.tertiaryContainer,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(2),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(message),
        ),
      ),
    );
  }
}

class _OutgoingMessageBubble extends StatelessWidget {
  final String message;

  const _OutgoingMessageBubble({required this.message});
  @override
  Widget build(context) {
    return FractionallySizedBox(
      alignment: Alignment.topRight,
      widthFactor: 0.8,
      child: Card(
        elevation: 0,
        margin: const EdgeInsets.all(8),
        color: Theme.of(context).colorScheme.secondaryContainer,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(2),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(message),
        ),
      ),
    );
  }
}
