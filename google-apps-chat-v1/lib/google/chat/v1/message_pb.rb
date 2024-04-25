# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/chat/v1/message.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/apps/card/v1/card_pb'
require 'google/chat/v1/action_status_pb'
require 'google/chat/v1/annotation_pb'
require 'google/chat/v1/attachment_pb'
require 'google/chat/v1/contextual_addon_pb'
require 'google/chat/v1/deletion_metadata_pb'
require 'google/chat/v1/matched_url_pb'
require 'google/chat/v1/reaction_pb'
require 'google/chat/v1/slash_command_pb'
require 'google/chat/v1/space_pb'
require 'google/chat/v1/user_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n\x1cgoogle/chat/v1/message.proto\x12\x0egoogle.chat.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/apps/card/v1/card.proto\x1a\"google/chat/v1/action_status.proto\x1a\x1fgoogle/chat/v1/annotation.proto\x1a\x1fgoogle/chat/v1/attachment.proto\x1a%google/chat/v1/contextual_addon.proto\x1a&google/chat/v1/deletion_metadata.proto\x1a google/chat/v1/matched_url.proto\x1a\x1dgoogle/chat/v1/reaction.proto\x1a\"google/chat/v1/slash_command.proto\x1a\x1agoogle/chat/v1/space.proto\x1a\x19google/chat/v1/user.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xa9\n\n\x07Message\x12\x0c\n\x04name\x18\x01 \x01(\t\x12)\n\x06sender\x18\x02 \x01(\x0b\x32\x14.google.chat.v1.UserB\x03\xe0\x41\x03\x12\x37\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x06\xe0\x41\x05\xe0\x41\x01\x12\x39\n\x10last_update_time\x18\x17 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0b\x64\x65lete_time\x18\x1a \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x0c\n\x04text\x18\x04 \x01(\t\x12\x1b\n\x0e\x66ormatted_text\x18+ \x01(\tB\x03\xe0\x41\x03\x12=\n\x05\x63\x61rds\x18\x05 \x03(\x0b\x32*.google.chat.v1.ContextualAddOnMarkup.CardB\x02\x18\x01\x12,\n\x08\x63\x61rds_v2\x18\x16 \x03(\x0b\x32\x1a.google.chat.v1.CardWithId\x12\x34\n\x0b\x61nnotations\x18\n \x03(\x0b\x32\x1a.google.chat.v1.AnnotationB\x03\xe0\x41\x03\x12&\n\x06thread\x18\x0b \x01(\x0b\x32\x16.google.chat.v1.Thread\x12$\n\x05space\x18\x0c \x01(\x0b\x32\x15.google.chat.v1.Space\x12\x15\n\rfallback_text\x18\r \x01(\t\x12<\n\x0f\x61\x63tion_response\x18\x0e \x01(\x0b\x32\x1e.google.chat.v1.ActionResponseB\x03\xe0\x41\x04\x12\x1a\n\rargument_text\x18\x0f \x01(\tB\x03\xe0\x41\x03\x12\x38\n\rslash_command\x18\x11 \x01(\x0b\x32\x1c.google.chat.v1.SlashCommandB\x03\xe0\x41\x03\x12.\n\nattachment\x18\x12 \x03(\x0b\x32\x1a.google.chat.v1.Attachment\x12\x34\n\x0bmatched_url\x18\x14 \x01(\x0b\x32\x1a.google.chat.v1.MatchedUrlB\x03\xe0\x41\x03\x12\x19\n\x0cthread_reply\x18\x19 \x01(\x08\x42\x03\xe0\x41\x03\x12\"\n\x1a\x63lient_assigned_message_id\x18  \x01(\t\x12K\n\x18\x65moji_reaction_summaries\x18! \x03(\x0b\x32$.google.chat.v1.EmojiReactionSummaryB\x03\xe0\x41\x03\x12\x39\n\x16private_message_viewer\x18$ \x01(\x0b\x32\x14.google.chat.v1.UserB\x03\xe0\x41\x05\x12@\n\x11\x64\x65letion_metadata\x18& \x01(\x0b\x32 .google.chat.v1.DeletionMetadataB\x03\xe0\x41\x03\x12K\n\x17quoted_message_metadata\x18\' \x01(\x0b\x32%.google.chat.v1.QuotedMessageMetadataB\x03\xe0\x41\x03\x12\x37\n\rattached_gifs\x18* \x03(\x0b\x32\x1b.google.chat.v1.AttachedGifB\x03\xe0\x41\x03\x12:\n\x11\x61\x63\x63\x65ssory_widgets\x18, \x03(\x0b\x32\x1f.google.chat.v1.AccessoryWidget:C\xea\x41@\n\x1b\x63hat.googleapis.com/Message\x12!spaces/{space}/messages/{message}\"\x1f\n\x0b\x41ttachedGif\x12\x10\n\x03uri\x18\x01 \x01(\tB\x03\xe0\x41\x03\"\x89\x02\n\x15QuotedMessageMetadata\x12\x31\n\x04name\x18\x01 \x01(\tB#\xe0\x41\x03\xfa\x41\x1d\n\x1b\x63hat.googleapis.com/Message\x12\x39\n\x10last_update_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03:\x81\x01\xea\x41~\n)chat.googleapis.com/QuotedMessageMetadata\x12Qspaces/{space}/messages/{message}/quotedMessageMetadata/{quoted_message_metadata}\"q\n\x06Thread\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x17\n\nthread_key\x18\x03 \x01(\tB\x03\xe0\x41\x01:@\xea\x41=\n\x1a\x63hat.googleapis.com/Thread\x12\x1fspaces/{space}/threads/{thread}\"\xd2\x04\n\x0e\x41\x63tionResponse\x12>\n\x04type\x18\x01 \x01(\x0e\x32+.google.chat.v1.ActionResponse.ResponseTypeB\x03\xe0\x41\x04\x12\x10\n\x03url\x18\x02 \x01(\tB\x03\xe0\x41\x04\x12\x38\n\rdialog_action\x18\x03 \x01(\x0b\x32\x1c.google.chat.v1.DialogActionB\x03\xe0\x41\x04\x12I\n\x0eupdated_widget\x18\x04 \x01(\x0b\x32,.google.chat.v1.ActionResponse.UpdatedWidgetB\x03\xe0\x41\x04\x1aR\n\x0eSelectionItems\x12@\n\x05items\x18\x01 \x03(\x0b\x32\x31.google.apps.card.v1.SelectionInput.SelectionItem\x1aw\n\rUpdatedWidget\x12\x44\n\x0bsuggestions\x18\x01 \x01(\x0b\x32-.google.chat.v1.ActionResponse.SelectionItemsH\x00\x12\x0e\n\x06widget\x18\x02 \x01(\tB\x10\n\x0eupdated_widget\"\x9b\x01\n\x0cResponseType\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\x0f\n\x0bNEW_MESSAGE\x10\x01\x12\x12\n\x0eUPDATE_MESSAGE\x10\x02\x12\x1d\n\x19UPDATE_USER_MESSAGE_CARDS\x10\x06\x12\x12\n\x0eREQUEST_CONFIG\x10\x03\x12\n\n\x06\x44IALOG\x10\x04\x12\x11\n\rUPDATE_WIDGET\x10\x07\"S\n\x0f\x41\x63\x63\x65ssoryWidget\x12\x36\n\x0b\x62utton_list\x18\x01 \x01(\x0b\x32\x1f.google.apps.card.v1.ButtonListH\x00\x42\x08\n\x06\x61\x63tion\"F\n\x11GetMessageRequest\x12\x31\n\x04name\x18\x01 \x01(\tB#\xe0\x41\x02\xfa\x41\x1d\n\x1b\x63hat.googleapis.com/Message\"X\n\x14\x44\x65leteMessageRequest\x12\x31\n\x04name\x18\x01 \x01(\tB#\xe0\x41\x02\xfa\x41\x1d\n\x1b\x63hat.googleapis.com/Message\x12\r\n\x05\x66orce\x18\x02 \x01(\x08\"\x92\x01\n\x14UpdateMessageRequest\x12-\n\x07message\x18\x01 \x01(\x0b\x32\x17.google.chat.v1.MessageB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12\x1a\n\rallow_missing\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\"\xa4\x03\n\x14\x43reateMessageRequest\x12\x33\n\x06parent\x18\x01 \x01(\tB#\xe0\x41\x02\xfa\x41\x1d\x12\x1b\x63hat.googleapis.com/Message\x12-\n\x07message\x18\x04 \x01(\x0b\x32\x17.google.chat.v1.MessageB\x03\xe0\x41\x02\x12\x19\n\nthread_key\x18\x06 \x01(\tB\x05\x18\x01\xe0\x41\x01\x12\x17\n\nrequest_id\x18\x07 \x01(\tB\x03\xe0\x41\x01\x12Z\n\x14message_reply_option\x18\x08 \x01(\x0e\x32\x37.google.chat.v1.CreateMessageRequest.MessageReplyOptionB\x03\xe0\x41\x01\x12\x17\n\nmessage_id\x18\t \x01(\tB\x03\xe0\x41\x01\"\x7f\n\x12MessageReplyOption\x12$\n MESSAGE_REPLY_OPTION_UNSPECIFIED\x10\x00\x12(\n$REPLY_MESSAGE_FALLBACK_TO_NEW_THREAD\x10\x01\x12\x19\n\x15REPLY_MESSAGE_OR_FAIL\x10\x02\"\xa9\x01\n\x13ListMessagesRequest\x12\x33\n\x06parent\x18\x01 \x01(\tB#\xe0\x41\x02\xfa\x41\x1d\x12\x1b\x63hat.googleapis.com/Message\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\x12\x14\n\x0cshow_deleted\x18\x06 \x01(\x08\"Z\n\x14ListMessagesResponse\x12)\n\x08messages\x18\x01 \x03(\x0b\x32\x17.google.chat.v1.Message\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x81\x01\n\x0c\x44ialogAction\x12-\n\x06\x64ialog\x18\x01 \x01(\x0b\x32\x16.google.chat.v1.DialogB\x03\xe0\x41\x04H\x00\x12\x38\n\raction_status\x18\x02 \x01(\x0b\x32\x1c.google.chat.v1.ActionStatusB\x03\xe0\x41\x04\x42\x08\n\x06\x61\x63tion\"6\n\x06\x44ialog\x12,\n\x04\x62ody\x18\x01 \x01(\x0b\x32\x19.google.apps.card.v1.CardB\x03\xe0\x41\x04\"F\n\nCardWithId\x12\x0f\n\x07\x63\x61rd_id\x18\x01 \x01(\t\x12\'\n\x04\x63\x61rd\x18\x02 \x01(\x0b\x32\x19.google.apps.card.v1.CardB\x97\x01\n\x12\x63om.google.chat.v1B\x0cMessageProtoP\x01Z,cloud.google.com/go/chat/apiv1/chatpb;chatpb\xaa\x02\x13Google.Apps.Chat.V1\xca\x02\x13Google\\Apps\\Chat\\V1\xea\x02\x16Google::Apps::Chat::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.chat.v1.User", "google/chat/v1/user.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.chat.v1.ContextualAddOnMarkup.Card", "google/chat/v1/contextual_addon.proto"],
    ["google.chat.v1.Annotation", "google/chat/v1/annotation.proto"],
    ["google.chat.v1.Space", "google/chat/v1/space.proto"],
    ["google.chat.v1.SlashCommand", "google/chat/v1/slash_command.proto"],
    ["google.chat.v1.Attachment", "google/chat/v1/attachment.proto"],
    ["google.chat.v1.MatchedUrl", "google/chat/v1/matched_url.proto"],
    ["google.chat.v1.EmojiReactionSummary", "google/chat/v1/reaction.proto"],
    ["google.chat.v1.DeletionMetadata", "google/chat/v1/deletion_metadata.proto"],
    ["google.apps.card.v1.SelectionInput.SelectionItem", "google/apps/card/v1/card.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.chat.v1.ActionStatus", "google/chat/v1/action_status.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Apps
    module Chat
      module V1
        Message = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.Message").msgclass
        AttachedGif = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.AttachedGif").msgclass
        QuotedMessageMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.QuotedMessageMetadata").msgclass
        Thread = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.Thread").msgclass
        ActionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.ActionResponse").msgclass
        ActionResponse::SelectionItems = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.ActionResponse.SelectionItems").msgclass
        ActionResponse::UpdatedWidget = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.ActionResponse.UpdatedWidget").msgclass
        ActionResponse::ResponseType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.ActionResponse.ResponseType").enummodule
        AccessoryWidget = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.AccessoryWidget").msgclass
        GetMessageRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.GetMessageRequest").msgclass
        DeleteMessageRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.DeleteMessageRequest").msgclass
        UpdateMessageRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.UpdateMessageRequest").msgclass
        CreateMessageRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.CreateMessageRequest").msgclass
        CreateMessageRequest::MessageReplyOption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.CreateMessageRequest.MessageReplyOption").enummodule
        ListMessagesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.ListMessagesRequest").msgclass
        ListMessagesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.ListMessagesResponse").msgclass
        DialogAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.DialogAction").msgclass
        Dialog = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.Dialog").msgclass
        CardWithId = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.CardWithId").msgclass
      end
    end
  end
end
