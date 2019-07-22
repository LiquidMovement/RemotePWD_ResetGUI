

function PWDForm{
    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.Application]::EnableVisualStyles()
    $PWDForm = New-Object 'System.Windows.Forms.Form'
    $PWDBox = New-Object 'System.Windows.Forms.TextBox'
    $PWDClose = New-Object 'System.Windows.Forms.Button'
    $PWDLabel = New-Object 'System.Windows.Forms.Label'
    $URLLabel = New-Object 'System.Windows.Forms.Label'
    $URLLabel2 = New-Object 'System.Windows.Forms.Label'

    $font4 = New-Object System.Drawing.Font("Microsoft Sans Serif", 10.5)
    $font3 = New-Object System.Drawing.Font("Microsoft Sans Serif", 20.5,[System.Drawing.FontStyle]::Bold)

    $InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'

    $PWDForm_Load = {
    
    }

    $PWDClose_Click = {
        $PWDForm.Close()
    }

    $Form_StateCorrection_Load = {
        $PWDForm.WindowState = $InitialFormWindowState  #"Maximized" #$InitialFormWindowState 
    }
    
    $PWDForm.SuspendLayout()

    $PWDForm.Controls.Add($PWDBox)
    $PWDForm.Controls.Add($PWDClose)
    $PWDForm.Controls.Add($PWDLabel)
    $PWDForm.Controls.Add($URLLabel)
    $PWDForm.Controls.Add($URLLabel2)

    #***** Define PWD Form *****
    #$PWDForm.ClientSize = '275, 100'
    $PWDForm.ClientSize = '350, 200'
    #$PWDForm.AutoScaleDimensions = '6, 13'
    #$PWDForm.AutoScaleMode = 'Font'
    #$PWDForm.FormBorderStyle = 'Sizable'
    $PWDForm.BackColor = "LightGray"
    $PWDForm.MaximizeBox = $False
    $PWDForm.MinimizeBox = $True
    $PWDForm.Name = "Remote PWD Reset"
    $PWDForm.StartPosition = 'CenterScreen'
    $PWDForm.Text = "Remote PWD Reset"
    #$PWDForm.MinimumSize = '100, 200'
    $PWDForm.KeyPreview = $True
    $PWDForm.AutoScroll = $True
    $PWDForm.VerticalScroll.Enabled = $True
    $PWDForm.VerticalScroll.Visible = $True
    $PWDForm.add_Load($PWDForm_Load)

    #***** Define PWD Label *****
    $PWDLabel.Text = "New Password : "
    $PWDLabel.Location = '25,20'
    $PWDLabel.Name = "PWD Label"
    $PWDLabel.Font = $font
    $PWDLabel.ForeColor = "Black"
    $PWDLabel.BringToFront()
    $PWDLabel.Size = '100,30'

    #***** Define PWD Box *****
    $PWDBox.Text = $script:text
    $PWDBox.TextAlign = "Center"
    $PWDBox.Name = "PWD Box"
    $PWDBox.Font = $font3
    $PWDBox.TabIndex = 0
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 190
    $System_Drawing_Size.Height = 40
    $PWDBox.Size = $System_Drawing_Size
    $PWDBox.Location = '130,10'
    $PWDBox.ReadOnly = $True
    $PWDBox.TabIndex = 1
    $PWDBox.BringToFront()
    

    #***** Define PWD Close Button *****
    $PWDClose.Location = '140, 170'
    $PWDClose.TabIndex = 0
    $PWDClose.Name = "Search Button"
    $PWDClose.Size = '75,20'
    $PWDClose.Text = 'Close'
    $PWDClose.UseVisualStyleBackColor = $True
    $PWDClose.BackColor = "White"
    $PWDClose.Font = $font
    $PWDClose.add_Click($PWDClose_Click)

    #***** Define URL Label *****
    $ADFSUrl = "https://adfs.XXXX.com/XXXX/XXXX/updatepassword/"
    $URLText = "Provide the user with the temporary password above`n`nAND `n`nthe ADFS password reset URL below :"
   
    $URLLabel.Text = "$URLText"
    $URLLabel.Location = '30,60'
    $URLLabel.Name = "PWD Label"
    $URLLabel.Font = $font
    $URLLabel.ForeColor = "Black"
    $URLLabel.BringToFront()
    $URLLabel.AutoSize = $True
    $URLLabel.TextAlign = "MiddleCenter"
    $URLLabel2.Text = "$ADFSUrl"
    $URLLabel2.Location = '15,135'
    $URLLabel2.Name = "PWD Label"
    $URLLabel2.Font = $font4
    $URLLabel2.ForeColor = "DarkBlue"
    $URLLabel2.BringToFront()
    $URLLabel2.AutoSize = $True
    $URLLabel2.TextAlign = "MiddleCenter"


    $PWDForm.ResumeLayout()
    $InitialFormWindowState = $PWDForm.WindowState
    $PWDForm.add_Load($Form_StateCorrection_Load)
    $PWDForm.ShowDialog()
}

function HelpForm{
    
    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.Application]::EnableVisualStyles()
    $helpForm = New-Object 'System.Windows.Forms.Form'
    $helpLabel = New-Object 'System.Windows.Forms.Label'
    $helpTitle = New-Object 'System.Windows.Forms.Label'

    $InitialFormWindowStateHelp = New-Object 'System.Windows.Forms.FormWindowState'


    $helpForm_Load = {

    }

    $helpForm_StateCorrection_Load = {
        $helpForm.WindowState = $InitialFormWindowStateHelp  #"Maximized" #$InitialFormWindowState 
    }
    
    $helpForm.SuspendLayout()

    #*********************************************************************************************

    #$helpForm.Controls.Add($helpText)
    $helpForm.Controls.Add($helpLabel)
    $helpForm.Controls.Add($helpTitle)

    #*********************************************************************************************
    #*********************************************************************************************
    #Defining $helpForm visuals/size
    $helpForm.ClientSize = '400, 600'
    $helpForm.AutoScaleDimensions = '6, 13'
	$helpForm.AutoScaleMode = 'Font'
    $helpForm.FormBorderStyle = 'FixedDialog'
    $helpForm.BackColor = "Gray" #[System.Drawing.Color]::FromArgb(255,185,209,234)
    #$helpForm.MaximizeBox = $True
    $helpForm.MinimizeBox = $True
    $helpForm.Name = 'form1'
    $helpForm.StartPosition = 'CenterScreen'
    $helpForm.Text = "Remote Password Reset Help"
    $helpForm.KeyPreview = $True
    $helpForm.BackColor = "LightGray" #[System.Drawing.Color]::FromArgb(255,185,209,234)
    $helpForm.AutoScroll = $True
    $helpForm.VerticalScroll.Enabled = $True
    $helpForm.VerticalScroll.Visible = $True
    $helpForm.add_Load($helpForm_Load)

    #*********************************
    $helpTitle.Name = "test"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 400
    $system_drawing_size.Height = 150
    $helpTitle.Size = $System_Drawing_Size
    #$helpLabel.MaximumSize = '550,500'
    #$helpLabel.AutoSize = $True
    $helpTitle.Anchor = 15
    $helpTitle.TextAlign = 'TopCenter'
    $helpTitle.Text = "
AD User Remote Password Reset

#******* 12/26/2018 - 1.0 *******#

This tool was created to help manage remote 
password resets for users that are off-premise 
and unable to sign the Password Reset Clipboard

_____________________________________________________________

"

    $helpLabel.Location = '0,0'
    $helpLabel.BringToFront()
    
    #*********************************
    
    $helpLabel.Name = "test"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 390
    $system_drawing_size.Height = 390
    $helpLabel.Size = $System_Drawing_Size
    #$helpLabel.MaximumSize = '550,500'
    #$helpLabel.AutoSize = $True
    $helpLabel.Anchor = 15
    $helpLabel.TextAlign = 'TopLeft'
    $helpLabel.Text = "
    -- 1. Enter the user's username in the provided text box and click Search
           or hit the Enter key                 

    -- 2. If the user is valid, their Phone #, Magic Word & Email should be 
           displayed. Verify this is the correct user referencing the returned 
           Email Address

    -- 3. Once Verified, text the user at the provided number asking for their 
           Magic Word.

    -- 4. If the user responds with correct Magic Word, continue forward with 
           the process.

          If the user DOES NOT respond with the correct Magic word, we are 
           unable to unlock their account/reset their password. They will most 
           likely need to be verified in person. Might contact XXXX if 
           this is encountered for further instructions.

    -- 5. After receiving the correct Magic Word, check the appropriate boxes 
           to Unlock the user and/or Reset their Password, & click Go.

    -- 6. If the user is successfully unlocked, the script will continue. If their 
           account is not unlocked successfully, an error message will be 
           displayed. 
                                  
          If their password is successfully reset you will receive a new window 
           containing their temporary password and the URL to the ADFS 
           password reset portal. 
           If the password is not successfully reset, an error message will be 
           displayed.

    -- 7. Provide the temporary password to the user and instruct them to browse 
           to the provided URL to reset their Network Password using the temporary 
           password as their current password (if applicable).

    -- 8. For each ‘Go’ button click with at least one of the checkboxes marked, 
           an entry is created in a CSV for logging purposes containing Date, 
           Time, Remote User, Verifying Admin, & if the Checkboxes were checked 
           or unchecked.

           Path to CSV : \\<NETWORK PATH>\RemotePWD_Reset_Log.csv

"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $helpLabel.Location = '0,135'
    $helpLabel.BringToFront()

    #*************


    $helpForm.ResumeLayout()

    $InitialFormWindowState = $helpForm.WindowState
    $helpForm.add_Load($helpForm_StateCorrection_Load)
    $helpForm.ShowDialog()

}

function randomText{

    $NameArray = @("DVader", "MPoppins", "TTiger", "KCWolf", "Yoda", "AAckbar")
    $MagicArray = @("I am your Father", "Supercalifragilisticexpialidocious", "They're grrrrrreat", "CHIEF'S KINGDOM", "Do or do not. There is no Try", "It's a trap")
    $EmailArray = @("Darth.Vader@YOURDOMAIN.com", "Mary.Poppins@YOURDOMAIN.com", "Tony.Tiger@YOURDOMAIN.com", "KC.Wolf@YOURDOMAIN.com", "Yo.Da@YOURDOMAIN.com", "Admiral.Ackbar@YOURDOMAIN.com")

    $randNumber = (Get-Random -Minimum 0 -Maximum 6)

    $script:randUName = $NameArray[$randNumber]
    $script:randMagic = $MagicArray[$randNumber]
    $script:randEmail = $EmailArray[$randNumber]

}

function SearchForm{

    Add-Type -AssemblyName System.Windows.Forms

    [System.Windows.Forms.Application]::EnableVisualStyles()
    $SearchForm = New-Object 'System.Windows.Forms.Form'
    $userBox = New-Object 'System.Windows.Forms.TextBox'
    $userLabel = New-Object 'System.Windows.Forms.Label'
    $phoneNumBox = New-Object 'System.Windows.Forms.TextBox'
    $phoneLabel = New-Object 'System.Windows.Forms.Label'
    $MagicBox = New-Object 'System.Windows.Forms.TextBox'
    $MagicLabel = New-Object 'System.Windows.Forms.Label'
    $EmailBox = New-Object 'System.Windows.Forms.TextBox'
    $EmailLabel = New-Object 'System.Windows.Forms.Label'


    $searchBtn = New-Object 'System.Windows.Forms.Button'
    $goBtn = New-Object 'System.Windows.Forms.Button'
    $closeBtn = New-Object 'System.Windows.Forms.Button'
    $clearBtn = New-Object 'System.Windows.Forms.Button'
    $dfBtn = New-Object 'System.Windows.Forms.Label'

    $Menu = New-Object System.Windows.Forms.MenuStrip
    $fileMenu = New-Object System.Windows.Forms.ToolStripMenuItem('File')
    $tools = New-Object System.Windows.Forms.ToolStripMenuItem('Tools')
    $help = New-Object System.Windows.Forms.ToolStripMenuItem('Help')
    $quit = New-Object System.Windows.Forms.ToolStripMenuItem('Quit')
    $logs = New-Object System.Windows.Forms.ToolStripMenuItem('Logs')
    $ADUC = New-Object System.Windows.Forms.ToolStripMenuItem('ADUC')

    $unlockBox = New-Object 'System.Windows.Forms.CheckBox'
    $GenPWD = New-Object 'System.Windows.Forms.CheckBox'
    $awsBox = New-Object 'System.Windows.Forms.CheckBox'

    $pictureBox = New-Object 'System.Windows.Forms.PictureBox'

    $font = New-Object System.Drawing.Font("Microsoft Sans Serif", 8.5,[System.Drawing.FontStyle]::Bold)
    $font2 = New-Object System.Drawing.Font("Microsoft Sans Serif", 8.5)

    $InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'

    $SearchForm_Load = {
    
    }


    #********\/****************\/*******************\/*************
    #** FUNCTIONS ON CLICK **

    function Search{
        $script:user = $userBox.Text
        $test = Get-ADUser -Identity $script:user
        if($test -eq $null){
            $phoneNumBox.Text = "Invald User"
            $MagicBox.Text = "Invald User"
            $EmailBox.Text = "Invald User"

            $unlockBox.Hide()
            $GenPWD.Hide()
            $awsBox.Hide()
            $goBtn.Hide()
            $clearBtn.Show()
            $clearBtn.Focus()
        }
        else{
            $script:userid = Get-ADUser -identity $script:user -Properties homePhone,roomNumber

            $script:phone = $script:userid.homePhone
            $script:magicword = $script:userid.roomNumber
            $script:email = $script:userid.userprincipalname

            $phoneNumBox.Text = $script:phone
            $MagicBox.Text = $script:magicword
            $EmailBox.Text = $script:email

            $unlockBox.Show()
            $GenPWD.Show()
            $awsBox.Show()
            $goBtn.Show()
            $clearBtn.Show()

            $unlockBox.Focus()

        }

        $phoneNumBox.Refresh()
        $MagicBox.Refresh()
        $EmailBox.Refresh()
    }

    function GenPWD{
        $script:text = "This is a test"
        
        #***** CREATE / SCRAMBLE NEW PASSWORD *****
        function Get-RandomCharacters($length, $characters) {
            $random = 1..$length | ForEach-Object { Get-Random -Maximum $characters.length }
            $private:ofs=""
            return [String]$characters[$random]
        }
 
        function Scramble-String([string]$inputString){     
            $characterArray = $inputString.ToCharArray()   
            $scrambledStringArray = $characterArray | Get-Random -Count $characterArray.Length     
            $outputString = -join $scrambledStringArray
            return $outputString 
        }
 
        $temp = Get-RandomCharacters -length 4 -characters 'abcdefghiklmnoprstuvwxyz'
        $temp += Get-RandomCharacters -length 2 -characters 'ABCDEFGHKLMNOPRSTUVWXYZ'
        $temp += Get-RandomCharacters -length 2 -characters '1234567890'
        $temp += Get-RandomCharacters -length 1 -characters '!$/()?@'

        $script:password = Scramble-String $temp
        #*****************************************


        #***** SET AD ACCOUNT PASSWORD *****
        if($awsBox.CheckState -eq $True){
            Set-ADAccountPassword -Identity $script:user -NewPassword (ConvertTo-SecureString -AsPlainText "$script:password" -Force) -Server aws-XXX
            Start-Sleep -Seconds 3
            $passwordSet = Get-ADUser -Identity $script:user -Server aws-XXX -Properties PasswordLastSet | Select-Object PasswordLastSet
            $script:pwdDate = $passwordSet.PasswordLastSet.ToShortDateString()
            $script:dateTest = (Get-Date).ToShortDateString()
        }
        else{
            Set-ADAccountPassword -Identity $script:user -NewPassword (ConvertTo-SecureString -AsPlainText "$script:password" -Force)
            Start-Sleep -Seconds 3
            $passwordSet = Get-ADUser -Identity $script:user -Server aws-XXX -Properties PasswordLastSet | Select-Object PasswordLastSet
            $script:pwdDate = $passwordSet.PasswordLastSet.ToShortDateString()
            $script:dateTest = (Get-Date).ToShortDateString()
        }
        #***********************************


        #***** TEST PASSWORD RESET DATE *****
        if($script:pwdDate -eq $script:dateTest){
            Set-ADUser -Identity $script:user -ChangePasswordAtLogon $True
            $script:text = "$script:password"
            PWDForm
        }
        else{
            [System.Windows.Forms.MessageBox]::Show("Error resetting password.`nPlease Manually reset $script:user's password and `nforce user to change password at next logon.")
        }
        #***********************************
        
    }

    function Unlock{
        Unlock-ADAccount -Identity $script:user

        $what = Get-ADUser -Identity $script:user -Properties Enabled | Select-Object Enabled
        if($what -eq $False){
            [System.Windows.Forms.MessageBox]::Show("Error unlocking account.`nPlease Manually unlock $user's account.")
        }
        else{}
        
    }

    function UpdateCSV{
        $loggedUser = Get-WmiObject -Class Win32_ComputerSystem | select username
        $shrtUser = $loggedUser.username
        $admin = $shrtUser.Split('\')[1]

        $csvPath = "\\<Network Path>\RemotePWD_Reset_Log.csv"
        $date = (Get-Date).ToShortDateString()
        $time = (Get-Date).ToShortTimeString()
        $unlockState = $unlockBox.CheckState
        $PWDState = $GenPWD.CheckState

        $toCSV = "$date, $time, $script:user, $admin, $unlockState, $PWDState"

        $toCSV | Out-file $csvPath -Append
    }

    #** CLICKS CALLING ABOVE FUNCTIONS **

    $searchBtn_Click = {
        Search
    }

    $goBtn_Click = {

        $GenPWD.Refresh()
        if($GenPWD.CheckState -eq $True){
            GenPWD
        }else{}

        
        $unlockBox.Refresh()
        if($unlockBox.CheckState -eq $True){
            Unlock
        }else{}


        if(($unlockBox.CheckState -eq $True) -or ($GenPWD.CheckState -eq $True)){
            UpdateCSV
        }else{}


        if(($unlockBox.CheckState -eq $False) -and ($GenPWD.CheckState -eq $False)){
            [System.Windows.Forms.MessageBox]::Show("ERROR.`nNothing Selected")
        }else{}

        $clearBtn.Focus()

    }

    $closeBtn_Click = {
        $SearchForm.Close()
    }

    $clearBtn_Click = {
        randomText
        
        $userBox.Clear()
        $userBox.Text = $script:randUName
        $userBox.Refresh()
        $userBox.Focus()

        $phoneNumBox.Clear()
        $phoneNumBox.Text = "XXX-XXX-XXXX"
        $phoneNumBox.Refresh()

        $MagicBox.Clear()
        $MagicBox.Text = $script:randMagic
        $MagicBox.Refresh()

        $EmailBox.Clear()
        $EmailBox.Text = $script:randEmail
        $EmailBox.Refresh()

        $unlockBox.Checked = $False
        $GenPWD.Checked = $False
        $awsBox.Checked = $True
        $unlockBox.Hide()
        $GenPWD.Hide()
        $awsBox.Hide()
        $goBtn.Hide()
        $clearBtn.Hide()
    }

    $helpBtn_Click = {
        HelpForm
        $userBox.Focus()
    }

    $logBtn_Click = {
        ii "\\<Network Path>\RemotePWD_Reset_Log.csv"
        $userBox.Focus()
    }

    $ADBtn_Click = {
        ii "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Administrative Tools\Active Directory Users and Computers.lnk"
        $userBox.Focus()
    }

    #********/\****************/\*******************/\*************
 
    $Form_StateCorrection_Load = {
        $SearchForm.WindowState = $InitialFormWindowState  #"Maximized" #$InitialFormWindowState 
    }
    
    $SearchForm.SuspendLayout()

    #****** SearchForm Control Add ************
    $SearchForm.Controls.Add($userBox)
    $SearchForm.Controls.Add($phoneNumBox)
    $SearchForm.Controls.Add($MagicBox)
    $SearchForm.Controls.Add($EmailBox)
    $SearchForm.Controls.Add($searchBtn)
    $SearchForm.Controls.Add($goBtn)
    $SearchForm.Controls.Add($closeBtn)
    $SearchForm.Controls.Add($clearBtn)
    $SearchForm.Controls.Add($unlockBox)
    $SearchForm.Controls.Add($GenPWD)
    $SearchForm.Controls.Add($awsBox)
    $SearchForm.Controls.Add($userLabel)
    $SearchForm.Controls.Add($phoneLabel)
    $SearchForm.Controls.Add($MagicLabel)
    $SearchForm.Controls.Add($EmailLabel)
    $SearchForm.Controls.Add($dfBtn)
    $SearchForm.Controls.Add($pictureBox)
    $SearchForm.Controls.Add($menu)

    $unlockBox.Hide()
    $GenPWD.Hide()
    $awsBox.Hide()
    $goBtn.Hide()
    $clearBtn.Hide()

    $dfBtn.BringToFront()
    $pictureBox.BringToFront()
    $userBox.BringToFront()
    $phoneNumBox.BringToFront()
    $MagicBox.BringToFront()
    $EmailBox.BringToFront()
    $userLabel.BringToFront()
    $phoneLabel.BringToFront()
    $MagicLabel.BringToFront()
    $EmailLabel.BringToFront()
    $searchBtn.BringToFront()
    $goBtn.BringToFront()
    $closeBtn.BringToFront()
    $clearBtn.BringToFront()
    $unlockBox.BringToFront()
    $GenPWD.BringToFront()
    $awsBox.BringToFront()
    $menu.BringToFront()


    #***** Define $dfBtn *****
    $dfBtn.Size = '270,310'
    $dfBtn.BackColor = "LightGray"
    $dfBtn.TabStop = $False
    $dfBtn.Location = '5,30'

    #***** Define SearchForm ********
    $SearchForm.ClientSize = '280, 345'
    #$SearchForm.AutoScaleDimensions = '6, 13'
    #$SearchForm.AutoScaleMode = 'Font'
    $SearchForm.FormBorderStyle = 'FixedDialog'
    $SearchForm.BackColor = "DarkBlue" #"LightGray"
    $SearchForm.MaximizeBox = $False
    $SearchForm.MinimizeBox = $True
    $SearchForm.Name = "Remote PWD Reset"
    $SearchForm.StartPosition = 'CenterScreen'
    $SearchForm.Text = "AD PWD Reset"
    $SearchForm.MinimumSize = '250, 300'
    $SearchForm.KeyPreview = $True
    $SearchForm.AutoScroll = $True
    $SearchForm.VerticalScroll.Enabled = $False
    $SearchForm.VerticalScroll.Visible = $False
    #$SearchForm.ControlBox = $False
    $SearchForm.add_Load($SearchForm_Load)

    $help.Add_Click($helpBtn_Click)

    $menu.items.Add($fileMenu)
    $menu.Items.Add($tools)
    $menu.Items.Add($help)

    $menu.Location = '0,0'
    $menu.size = '280,24'
    $menu.text = "Main Menu"
    
    $Logs.Add_Click($logBtn_Click)
    $quit.Add_Click($closeBtn_Click)
    $ADUC.Add_Click($ADBtn_Click)

    $fileMenu.DropDownItems.Add($Logs)
    $fileMenu.DropDownItems.Add($quit)
    $tools.DropDownItems.Add($ADUC)
    
    $menu.TabIndex = 2

    #***** Define User Label *****
    $userLabel.Text = "Username :"
    #$userLabel.Location = '10,15'
    $userLabel.Location = '10,42'
    $userLabel.Name = "Username Label"
    $userLabel.Font = $font
    $userLabel.ForeColor = "Black"
    $userLabel.BackColor = "LightGray"
    $userLabel.BringToFront()
    $userLabel.Size = '80,20'

    #***** Define Username Box *****
    $userBox.Text = "$script:randUName"
    $userBox.Name = "Username Search Box"
    $userBox.TabIndex = 0
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 140
    $System_Drawing_Size.Height = 20
    $userBox.Size = $System_Drawing_Size
    #$userBox.Location = '95,10'
    $userBox.Location = '95,37'
    $userBox.Add_KeyDown({if ($_.KeyCode -eq "Enter")
        {
            $searchBtn.PerformClick()
        }
    })

    #***** Define Search Button *****
    #$searchBtn.Location = '40, 50'
    $searchBtn.Location = '40, 70'
    $searchBtn.Name = "Search Button"
    $searchBtn.Size = '70,20'
    $searchBtn.Text = 'Search'
    $searchBtn.TabIndex = 2
    $searchBtn.UseVisualStyleBackColor = $True
    $searchBtn.BackColor = "White"
    $searchBtn.Font = $font
    $searchBtn.add_Click($searchBtn_Click)


    #***** Define PhoneNum Box *****
    $phoneNumBox.Text = "XXX-XXX-XXXX"
    $phoneNumBox.Name = "Phone # Box"
    $phoneNumBox.ReadOnly = $True
    $phoneNumBox.TabStop = $False
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 168
    $System_Drawing_Size.Height = 20
    $phoneNumBox.Size = $System_Drawing_Size
    $phoneNumBox.Location = '95,102'

    #***** Define Phone # Label *****
    $phoneLabel.Text = "Phone # :"
    $phoneLabel.Location = '10,109'
    $phoneLabel.Name = "Phone # Label"
    $phoneLabel.Font = $font
    $phoneLabel.ForeColor = "Black"
    $phoneLabel.BackColor = "LightGray"
    $phoneLabel.BringToFront()
    $phoneLabel.Size = '80,20'


    #***** Define Magic Word Box *****
    $MagicBox.Text = "$script:randMagic"
    $MagicBox.Name = "Magic Word Box"
    $MagicBox.ReadOnly = $True
    $MagicBox.TabStop = $False
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 168
    $System_Drawing_Size.Height = 20
    $MagicBox.Size = $System_Drawing_Size
    $MagicBox.Location = '95,134'

    #***** Define Magic Word Label *****
    $MagicLabel.Text = "Magic Word :"
    $MagicLabel.Location = '10,139'
    $MagicLabel.Name = "Magic Word Label"
    $MagicLabel.Font = $font
    $MagicLabel.ForeColor = "Black"
    $MagicLabel.BackColor = "LightGray"
    $MagicLabel.BringToFront()
    $MagicLabel.Size = '80,20'


    #***** Define Email Box *****
    $EmailBox.Text = "$script:randEmail"
    $EmailBox.Name = "User Email Box"
    $EmailBox.ReadOnly = $True
    $EmailBox.TabStop = $False
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 168
    $System_Drawing_Size.Height = 20
    $EmailBox.Size = $System_Drawing_Size
    $EmailBox.Location = '95,167'


    #***** Define Email Label *****
    $EmailLabel.Text = "Email :"
    $EmailLabel.Location = '10,171'
    $EmailLabel.Name = "Email Label"
    $EmailLabel.Font = $font
    $EmailLabel.ForeColor = "Black"
    $EmailLabel.BackColor = "LightGray"
    $EmailLabel.BringToFront()
    $EmailLabel.Size = '80,20'


    #***** Define Go Button *****
    $goBtn.Location = '40, 265'
    $goBtn.Name = "Search Button"
    $goBtn.Size = '70,20'
    $goBtn.Text = 'Go'
    $goBtn.TabIndex = 6
    $goBtn.UseVisualStyleBackColor = $True
    $goBtn.BackColor = "White"
    $goBtn.Font = $font
    $goBtn.add_Click($goBtn_Click)


    #***** Define Close Button *****
    $closeBtn.Location = '105, 305'
    $closeBtn.Name = "Search Button"
    $closeBtn.Size = '70,20'
    $closeBtn.Text = 'Close'
    $closeBtn.TabIndex = 8
    $closeBtn.UseVisualStyleBackColor = $True
    $closeBtn.BackColor = "White"
    $closeBtn.Font = $font
    $closeBtn.add_Click($closeBtn_Click)


    #***** Define Clear Button *****
    $clearBtn.Location = '170, 265'
    $clearBtn.Name = "Search Button"
    $clearBtn.Size = '70,20'
    $clearBtn.Text = 'Clear'
    $clearBtn.TabIndex = 7
    $clearBtn.UseVisualStyleBackColor = $True
    $clearBtn.BackColor = "White"
    $clearBtn.Font = $font
    $clearBtn.add_Click($clearBtn_Click)


    #***** Define Unlock Check Box *****
    $unlockBox.Name = "Unlock User Check Box"
    $unlockBox.Text = "Unlock User"
    $unlockBox.Checked = $False
    $unlockBox.TabIndex = 3
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 85
    $System_Drawing_Size.Height = 20
    $unlockBox.size = $System_Drawing_Size
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 40
    $System_Drawing_Point.Y = 200
    $unlockBox.Location = $System_Drawing_Point
    $unlockBox.BackColor = 'lightgray'


    #***** Define GenPWD Check Box *****
    $GenPWD.Name = "Gen PWD Check Box"
    $GenPWD.Text = "Reset PWD"
    $GenPWD.Checked = $False
    $GenPWD.TabIndex = 4
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 85
    $System_Drawing_Size.Height = 20
    $GenPWD.size = $System_Drawing_Size
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 40
    $System_Drawing_Point.Y = 230
    $GenPWD.Location = $System_Drawing_Point
    $GenPWD.BackColor = 'lightgray'


    #***** Define AWSDC Check Box *****
    $awsBox.Name = "AWSDC Selected"
    $awsBox.Text = "AWS DC"
    $awsBox.Checked = $True
    $awsBox.TabIndex = 5
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 85
    $System_Drawing_Size.Height = 20
    $awsBox.size = $System_Drawing_Size
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 170
    $System_Drawing_Point.Y = 200
    $awsBox.Location = $System_Drawing_Point
    $awsBox.BackColor = 'lightgray'


    #***** Define Pic Box *****
    $file = (Get-Item "\\<NETWORK PATH>\PICTUREFILE.jpg")
    $Image = [system.drawing.image]::FromFile($file)
    $pictureBox.Image = $Image
    $pictureBox.Width = $Image.size.width
    $pictureBox.Height = $Image.size.Height
    $pictureBox.Location = '235, 295'
    $pictureBox.Anchor = 'Top, Left'
    


    $SearchForm.ResumeLayout()
    $InitialFormWindowState = $SearchForm.WindowState
    $SearchForm.add_Load($Form_StateCorrection_Load)
    $SearchForm.ShowDialog()
}



#**********************SHOW/HIDE PS CONSOLE WINDOW************************
Add-Type -Name Window -Namespace Console -MemberDefinition '
[DllImport("Kernel32.dll")]
public static extern IntPtr GetConsoleWindow();

[DllImport("user32.dll")]
public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);
'

function Show-Console
{
    $consolePtr = [Console.Window]::GetConsoleWindow()

    # Hide = 0,
    # ShowNormal = 1,
    # ShowMinimized = 2,
    # ShowMaximized = 3,
    # Maximize = 3,
    # ShowNormalNoActivate = 4,
    # Show = 5,
    # Minimize = 6,
    # ShowMinNoActivate = 7,
    # ShowNoActivate = 8,
    # Restore = 9,
    # ShowDefault = 10,
    # ForceMinimized = 11

    [Console.Window]::ShowWindow($consolePtr, 4)
}

function Hide-Console
{
    $consolePtr = [Console.Window]::GetConsoleWindow()
    #0 hide
    [Console.Window]::ShowWindow($consolePtr, 0)
}

Hide-Console
#**************************************************************************
#**************************************************************************

randomText


#**************************************************************************

SearchForm