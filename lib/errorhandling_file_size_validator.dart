/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/errorhandling_file_size_validator_base.dart';

/*
Practice Question 1: File Size Validator

Task:

Create a function named validateFileSize that takes an integer representing the size of a file in kilobytes.

If the file size exceeds a certain limit (e.g., 5000 kilobytes), 
throw a custom exception named FileSizeTooLargeException.

Include an optional parameter in the function to allow specifying different size limits.
 */

void validateFileSize(int fileSize, {int limit = 5000}){
  if(!(fileSize <= limit)){
    throw FileSizeTooLargeException("This file is too large! File size provided: $fileSize");
  }
}

class FileSizeTooLargeException implements Exception {
  String message;
  FileSizeTooLargeException(this.message);
}