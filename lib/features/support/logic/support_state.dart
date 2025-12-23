part of 'support_cubit.dart';

enum FetchStatus { initial, loading, success, error }

class SupportState extends Equatable {
  final FetchStatus status;
  final String errorMessage;

  final File? uploadedAttachScreenshotFile;

  final String? issueType;
  final String? message;
  final String? orderId;

  const SupportState({
    this.status = FetchStatus.initial,
    this.errorMessage = '',
    this.uploadedAttachScreenshotFile,
    this.issueType,
    this.message,
    this.orderId,
  });

  SupportState copyWith({
    FetchStatus? status,
    String? errorMessage,
    Wrapped<File>? uploadedAttachScreenshotFile,
    Wrapped<String?>? issueType,
    Wrapped<String?>? message,
    Wrapped<String?>? orderId,
  }) {
    return SupportState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      uploadedAttachScreenshotFile: uploadedAttachScreenshotFile != null
          ? uploadedAttachScreenshotFile.value
          : this.uploadedAttachScreenshotFile,
      issueType: issueType != null ? issueType.value : this.issueType,
      message: message != null ? message.value : this.message,
      orderId: orderId != null ? orderId.value : this.orderId,
    );
  }

  @override
  List<Object?> get props => [
        status,
        errorMessage,
        uploadedAttachScreenshotFile,
        issueType,
        message,
        orderId,
      ];
}
