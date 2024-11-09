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

6. Click **Add Shortcut** and type(do not press) **Super + Shift + T**  as your key combination and click **Add keybinding** .

### Usage

Press **Super + Shift + T** to:

1. Take a screenshot.
2. Extract text from the screenshot.
3. Copy the text to your clipboard.

### Further Update
Various parameters can be added to tesseract to improve OCR

### Language setup
Modify the line number 15, according to your need.
Here's the updated README table with multilingual examples included, as well as instructions for modifying the script.

---

## Language Support for `ocr.sh`

This table lists the installation commands and required modifications to add or customize language support in **`ocr.sh`** for OCR text extraction.

### Supported Languages and Modifications

| Language(s)                          | Tesseract Language Code(s) | Installation Command(s)                                    | Line 15 Modification Example                                      |
|--------------------------------------|----------------------------|------------------------------------------------------------|-------------------------------------------------------------------|
| **English**                          | `eng`                      | _Installed by default with Tesseract_                      | `text=$(tesseract "$latest_screenshot" stdout -l eng 2>/dev/null)` |
| **Hindi**                            | `hin`                      | `sudo apt install tesseract-ocr-hin`                       | `text=$(tesseract "$latest_screenshot" stdout -l hin 2>/dev/null)` |
| **Spanish**                          | `spa`                      | `sudo apt install tesseract-ocr-spa`                       | `text=$(tesseract "$latest_screenshot" stdout -l spa 2>/dev/null)` |
| **French**                           | `fra`                      | `sudo apt install tesseract-ocr-fra`                       | `text=$(tesseract "$latest_screenshot" stdout -l fra 2>/dev/null)` |
| **German**                           | `deu`                      | `sudo apt install tesseract-ocr-deu`                       | `text=$(tesseract "$latest_screenshot" stdout -l deu 2>/dev/null)` |
| **Japanese**                         | `jpn`                      | `sudo apt install tesseract-ocr-jpn`                       | `text=$(tesseract "$latest_screenshot" stdout -l jpn 2>/dev/null)` |
| **Chinese (Simplified)**             | `chi_sim`                  | `sudo apt install tesseract-ocr-chi-sim`                   | `text=$(tesseract "$latest_screenshot" stdout -l chi_sim 2>/dev/null)` |
| **Chinese (Traditional)**            | `chi_tra`                  | `sudo apt install tesseract-ocr-chi-tra`                   | `text=$(tesseract "$latest_screenshot" stdout -l chi_tra 2>/dev/null)` |
| **Russian**                          | `rus`                      | `sudo apt install tesseract-ocr-rus`                       | `text=$(tesseract "$latest_screenshot" stdout -l rus 2>/dev/null)` |
| **Arabic**                           | `ara`                      | `sudo apt install tesseract-ocr-ara`                       | `text=$(tesseract "$latest_screenshot" stdout -l ara 2>/dev/null)` |
| **English + Hindi**                  | `eng+hin`                  | Install both English and Hindi                             | `text=$(tesseract "$latest_screenshot" stdout -l eng+hin 2>/dev/null)` |
| **English + Spanish**                | `eng+spa`                  | Install both English and Spanish                           | `text=$(tesseract "$latest_screenshot" stdout -l eng+spa 2>/dev/null)` |
| **Multilingual (e.g., English + Hindi + Spanish)** | `eng+hin+spa` | Install all required language packages                     | `text=$(tesseract "$latest_screenshot" stdout -l eng+hin+spa 2>/dev/null)` |

### Adding Multiple Languages

To enable multiple languages, combine the language codes with a `+`. For example, for **English, Hindi, and Spanish** text recognition, use the following in **line 15**:

```bash
text=$(tesseract "$latest_screenshot" stdout -l eng+hin+spa 2>/dev/null)
```

Ensure that the necessary packages for each language are installed.

---
After running, the script will automatically remove the latest screenshot image from the **Pictures** directory. 

---

This setup allows you to instantly OCR text from any selected screen area and have it ready in the clipboard for easy pasting.
