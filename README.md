# PDF Gallery Android App

A modern Android application for managing and viewing PDF files, similar to a photo gallery but specifically designed for PDF documents.

## Features

### Core Features
- **PDF Discovery**: Automatically scans device storage for PDF files
- **Search Functionality**: Real-time search through PDF file names
- **Multiple View Modes**: Switch between grid and list views
- **Grouping Options**: Group PDFs by name, date modified, or file size
- **PDF Viewer**: Built-in PDF viewer with zoom and scroll capabilities

### Additional Features
- **Modern Material Design**: Clean, intuitive user interface
- **Swipe to Refresh**: Pull down to refresh the PDF list
- **Permission Management**: Handles storage permissions gracefully
- **File Information**: Shows file size and modification date
- **Responsive Layout**: Optimized for different screen sizes

## Technical Details

### Requirements
- Android 7.0 (API level 24) or higher
- Storage permissions for accessing PDF files

### Architecture
- **Language**: Kotlin
- **UI Framework**: Android Views with Material Design Components
- **PDF Rendering**: AndroidPdfViewer library
- **Async Operations**: Kotlin Coroutines
- **Layout**: RecyclerView with GridLayoutManager/LinearLayoutManager

### Key Components
- `MainActivity`: Main screen with PDF list and search
- `PDFViewerActivity`: Full-screen PDF viewer
- `PDFScanner`: Scans device storage for PDF files
- `PDFAdapter`: RecyclerView adapter for displaying PDFs
- `PDFFile`: Data class representing PDF file information

## Building the App

### Prerequisites
- Android Studio or Android SDK
- Java 8 or higher
- Gradle

### Build Instructions

1. **Using the build script** (Windows):
   ```bash
   build.bat
   ```

2. **Using Gradle directly**:
   ```bash
   ./gradlew assembleDebug
   ```

3. **Using Android Studio**:
   - Open the project in Android Studio
   - Click "Build" → "Build Bundle(s) / APK(s)" → "Build APK(s)"

### Output
The APK will be generated at: `app/build/outputs/apk/debug/app-debug.apk`

## Installation

1. Enable "Install from unknown sources" in your Android device settings
2. Transfer the APK file to your device
3. Tap the APK file to install
4. Grant storage permissions when prompted

## Usage

1. **First Launch**: Grant storage permissions to scan for PDFs
2. **Browse PDFs**: View all discovered PDF files in grid or list format
3. **Search**: Use the search icon to find specific PDFs
4. **Group**: Use the menu to group PDFs by name, date, or size
5. **View**: Tap any PDF to open it in the built-in viewer
6. **Refresh**: Pull down or use the refresh menu option to rescan

## Permissions

The app requires the following permissions:
- `READ_EXTERNAL_STORAGE`: To access PDF files on device storage
- `MANAGE_EXTERNAL_STORAGE`: For Android 11+ devices (optional but recommended)

## Libraries Used

- **AndroidPdfViewer**: For PDF rendering and viewing
- **Material Design Components**: For modern UI elements
- **AndroidX Libraries**: For compatibility and modern Android features
- **Kotlin Coroutines**: For asynchronous operations

## Future Enhancements

Potential features for future versions:
- PDF thumbnails generation
- Favorites/bookmarks system
- Recent files tracking
- Cloud storage integration
- PDF annotation support
- Dark theme support
- Export/share functionality

## License

This project is created for educational and personal use.