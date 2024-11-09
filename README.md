## OCR Screenshot Script

This script captures a screenshot, performs OCR (Optical Character Recognition) on the image to extract text, copies the extracted text to the clipboard, and removes the screenshot afterward.

### Prerequisites

- **Pop!_OS 24.04 with Cosmic Desktop Environment**
- **Tesseract OCR** for text extraction
- **wl-clipboard** for copying text to the clipboard in Wayland environments

### Installation Steps

#### 1. Install Tesseract and `wl-clipboard`

To install Tesseract OCR and `wl-clipboard`, open a terminal and run:

```bash
sudo apt update
sudo apt install tesseract-ocr wl-clipboard
```

#### 2. Save the Script to a Directory and Make it Executable

1. Copy the `ocr.sh` script to a directory, e.g., your **home** directory (`/home/your_user_name/`).
   
2. Make the script executable by running the following command:

   ```bash
   chmod +x ~/ocr.sh
   ```

#### 3. Assign the Keyboard Shortcut `Super+Shift+T` as an example.

To quickly run the script with the **`Super+Shift+T`** shortcut:

1. **Open Settings** in Cosmic Desktop.
2. Go to **Input Devices -> Keyboard** settings.
3. Scroll down and select **Add Custom Shortcut**.
4. Name the shortcut, e.g., **"OCR Screenshot"**.
5. In the **Command** field, enter the full path to the script:

   ```bash
   /home/your_user_name/ocr.sh
   ```

6. Click **Add Shortcut** and type(do not press) **Super + Shift + T**  as your key combination.

### Usage

Press **Super + Shift + T** to:

1. Take a screenshot.
2. Extract text from the screenshot.
3. Copy the text to your clipboard.

### Further Update
Various parameters can be added to tesseract to improve OCR

After running, the script will automatically remove the latest screenshot image from the **Pictures** directory. 

---

This setup allows you to instantly OCR text from any selected screen area and have it ready in the clipboard for easy pasting.
