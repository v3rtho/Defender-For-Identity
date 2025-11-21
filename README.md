# Microsoft Defender for Identity - PowerShell GUI Wrapper

A user-friendly graphical interface for managing Microsoft Defender for Identity (MDI) configurations using PowerShell.

![PowerShell](https://img.shields.io/badge/PowerShell-5.1%2B-blue.svg)
![Platform](https://img.shields.io/badge/platform-Windows-lightgrey.svg)

## 📋 Overview

This PowerShell script provides a comprehensive WPF-based GUI wrapper around the Microsoft Defender for Identity PowerShell module. It simplifies the configuration, testing, and management of MDI deployments through an intuitive interface, eliminating the need to remember complex PowerShell commands.

**Publisher:** Thomas Verheyden  
**Release Date:** November 21, 2025

## ✨ Features

### 🔧 Configuration Management
- Set MDI configurations for Domain or LocalMachine mode
 - All (all configurations)
- AdfsAuditing
- AdRecycleBin
- AdvancedAuditPolicyCAs
- AdvancedAuditPolicyDCs
- CAAuditing
- ConfigurationContainerAuditing
- EntraConnectAuditing
- RemoteSAM
- DomainObjectAuditing
- NTLMAuditing
- ProcessorPerformance 

### 🧪 Testing & Validation
- Test MDI configurations
- Validate specific audit policies
- Support for both Domain and LocalMachine testing modes

### 📊 Reporting
- Generate comprehensive HTML configuration reports
- Customizable output path
- Automatic report opening option
- Domain and LocalMachine report modes

### 🌐 Proxy Configuration
- Configure MDI sensor proxy settings
- Support for authenticated proxies
- Get current proxy configuration
- Clear proxy settings
- Test sensor API connectivity

### 👤 Directory Service Account (DSA) Management
- Create DSA accounts
- Test DSA permissions and delegations
- View current MDI configuration

## 🚀 Prerequisites

- **Operating System:** Windows 10/11 or Windows Server 2016+
- **PowerShell:** Version 5.1 or later 
- **Module:** DefenderForIdentity PowerShell module
- **Permissions:** Administrator rights required for most operations

## 📦 Installation

### 1. Install the DefenderForIdentity Module

Open PowerShell as Administrator and run:

```powershell
Install-Module -Name DefenderForIdentity -Force
```

### 2. Download the Script

Clone this repository or download the `MDI-configurator.ps1` 

### 3. Execution Policy

Ensure your PowerShell execution policy allows script execution:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

## 🎯 Usage

### Running the Script

#### Option 1: From PowerShell
```powershell
.\MDI-configurator.ps1
```

### First-Time Setup

1. The script will automatically check if the DefenderForIdentity module is installed
2. If not found, it will prompt you with installation instructions
3. After installing the module, restart the application

## 📖 User Guide

### Configuration Tab
1. Select your deployment mode (Domain or LocalMachine)
2. Check the configuration items you want to apply & Choose if you want to use GPOprefix or GPOlinking
3. Click **Apply Configuration**
4. Monitor the output in the result pane

### Test & Validate Tab
1. Choose the test mode (Domain or LocalMachine)
2. Select which configuration to test & Choose if you want to use GPOprefix or GPOlinking
3. Click **Run Test**
4. Review test results in the output pane

### Reports Tab
1. Specify the output path (default: `C:\Temp`)
2. Select report mode
3. Optionally enable automatic report opening
4. Click **Generate Report**

### Proxy Tab
1. Enter proxy URL (e.g., `http://proxy.contoso.com:8080`)
2. Optionally provide proxy credentials
3. Use the buttons to:
   - **Set Proxy** - Apply proxy configuration
   - **Get Proxy** - View current settings
   - **Clear Proxy** - Remove proxy configuration
   - **Test Sensor API Connection** - Verify connectivity

### DSA Tab
1. Enter DSA username and password
2. Click **Create gMSA** to create the account
3. Use **Test gMSA** to validate permissions
4. Click **Get MDI Configuration** to view current settings

## 🔒 Security Considerations

- **Credentials:** Passwords are handled using PowerShell's `SecureString` for secure credential management
- **Permissions:** Most operations require Domain Admin or equivalent privileges
- **Logging:** All command outputs are displayed in the GUI for transparency
- **Best Practice:** Run on a secure administrative workstation

## 🤝 Contributing

Contributions are welcome!

## 🙏 Acknowledgments

- Microsoft Defender for Identity team for the PowerShell module
- The PowerShell community for WPF examples and best practices

## 📧 Contact

For issues, questions, or suggestions, please open an issue on GitHub.

## 🔄 Version History

### Version 1.0.0 (November 17, 2025)
- Initial release
- Full GUI implementation for MDI PowerShell module
- Support for all major MDI configuration operations
- Comprehensive testing and reporting capabilities
- Proxy and DSA management features

---

**Note:** This tool is a community-developed GUI wrapper and is not officially supported by Microsoft. Always test in a non-production environment first.
