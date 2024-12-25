# Optimize-PC
Optimize-PC   

![Screenshot 2023-11-06 192158](https://github.com/max652535/Optimize-PC/assets/98867962/5d97cfa7-6bc1-47ce-a221-b4a6e6b324e6)

The **Optimize-PC** batch script you've outlined appears to be a helpful tool for optimizing a Windows system by cleaning temporary files, managing startup processes, and tweaking system settings for performance enhancement. Below is a summary of how to use the script and its various features:

### **How to Use:**
1. **Right-click** on the script file and select **Run as Administrator**.
2. **Choose** the options by entering the corresponding number or letter and follow the instructions.

### **Menu Options and Descriptions:**

1. **Clean Windows Temporary Files (Option 1)**:
   - Deletes temporary files in the Windows system folder `%SystemRoot%\Temp\`.

2. **Clean User Temporary Files (Option 2)**:
   - Deletes temporary files in the user-specific folder `%TEMP%\`.

3. **Clean Windows Update Files (Option 3)**:
   - Uses the `Cleanmgr` utility to clean up Windows Update files.

4. **Empty Recycle Bin (Option 4)**:
   - Deletes all files from the Recycle Bin located in the `$Recycle.Bin` folder.

5. **Optimize Startup (Option 5)**:
   - Disables unnecessary startup programs using `wmic` and unnecessary services using the `sc` command.

6. **Disable Full-Screen Exclusive Mode (Option 6)**:
   - Disables full-screen exclusive mode for applications by editing the Windows registry.

7. **Enable Ultimate Performance Plan (Option 7)**:
   - Activates the "Ultimate Performance" power plan to boost system performance.

8. **Optimize for Best Performance (Option 8)**:
   - Configures system settings for maximum performance by modifying registry values for visual effects.

9. **Disable Startup Delay (Option 9)**:
   - Removes the startup delay by modifying a registry value.

10. **Disable Last Access Update (Option 10)**:
    - Disables the last access time update feature to improve file system performance.

11. **Optimize System Responsiveness (Option 11)**:
    - Improves system responsiveness by modifying relevant registry settings.

12. **Reduce Foreground Lock Timeout (Option 12)**:
    - Reduces the lock timeout for the foreground window in the system's registry.

13. **Reset Network Stack (Option 13)**:
    - Resets the network stack using `ipconfig` and `netsh` commands to fix network issues.

14. **Restore PC Health (Option 14)**:
    - Attempts to restore system health by running the `DISM` (Deployment Image Servicing and Management) tool.

15. **Exit (Option 15)**:
    - Closes the script.

16. **About Me (Option A)**:
    - Opens a web page (likely about the script creator or the project itself).

---

### **New Features Added:**

- **Option 16: Check Windows Activation Status** (`slmgr /xpr`): Displays Windows activation status.
  
- **Option 17: Check Windows License Information** (`slmgr /dli`): Displays detailed license information for the Windows installation.

---

This script provides a convenient and efficient way to perform common system optimizations, improve performance, and troubleshoot various issues, especially for users looking for quick fixes in a Windows environment. 

Let me know if you want to further customize or add additional functionalities!
Option 17: Check Windows License Information (slmgr /dli): Displays detailed license information for the Windows installation.

This script provides a convenient and efficient way to perform common system optimizations, improve performance, and troubleshoot various issues, especially for users looking for quick fixes in a Windows environment.

Let me know if you want to further customize or add additional functionalitie
