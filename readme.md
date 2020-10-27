# Project Information

FightingEntropy is a PowerShell modification for: 1) Microsoft Deployment Toolkit, 2) Windows Assessment and Deployment Kit, 3) Windows Preinstallation Environment, 4) IIS/BITS/ASP.Net Framework, 5) Image Factory derivative, 6) DSC for Active Directory, DNS, DHCP, WDS, 7) Endpoint Service Configuration (ViperBomb), 8) Endpoint branding, 9) automation and installation of these tasks.

In it's current state, the module is broken down into several classes and functions. 
Running the following installation code in PowerShell will allow a live installation of the modification thus far.
Intentions to bring this fully cross platform highly depend on WPF and Xamarin still needing implementation.
In other words, some things work in Linux, some things don't. 
The things that don't are typically WMF based commands, or CIM/WMI.

# Install
This following scriptlet will download all of the necessary files to install FightingEntropy

    If ( [Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent() | % IsInRole Administrators )
    {
        Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force
        Add-Type -AssemblyName PresentationFramework
        $Install = Invoke-WebRequest -URI https://raw.githubusercontent.com/mcc85sx/FightingEntropy/master/2020.10.1/Install.ps1 -ContentType charset=utf-8 | % Content
        $Module  = Invoke-Expression $Install
    }

# Classes

[Control]

                 [_Root] : Stuff
               [_Module] : Obtains the root of the module, able to spawn additional tools/shares
[System]

                [_Drive] : An object that represents a drive in any given system
               [_Drives] : A group of drives that are in a given system/network
                 [_File] : A file object, for handling
                 [_Info] : Various Cim-Instance properties
                 [_Host] : Current host oobject
                [_QMark] : Obtains the unique QMark code from taskman
[General]

                [_Cache] : Converts a URL to a filepath
         [_FirewallRule] : Creates a firewall rule for Windows Firewall/netsh
                [_Icons] : Displays the icons on the desktop
             [_Shortcut] : Creates a shortcut on the desktop
             
[Server]

     [_ServerDependency] : Dependencies such as the Microsoft Deployment Toolkit, WADK, and WinPE.
        [_ServerFeature] : Server feature objects, used to organize specific set
       [_ServerFeatures] : FE Server features, IIS and etc.
                  [_IIS] : IIS Class Template
          [_IISFeatures] : Additional IIS Features 
              [_DCPromo] : Used to promote a workstation server to a domain controller

[Console]

                [_Faces] : Array of multiple masks of characters
                [_Block] : Section of characters with foreground and background colors
                [_Theme] : Pulls corresponding object theme
                [_Track] : Handle/swap details using the track object
               [_Object] : Function initially creates an object, determines count, and length 
               [_Banner] : Draws custom footer
                 [_Flag] : Draws a flag that represents the full fire and fury, of "The United States of America"

[Graphical]

                 [_Xaml] : Loads XAML for cleanup, or simply  
     [_XamlGlossaryItem] : Provides an index for shorthand variables
           [_XamlObject] : Currently stores a number of chunks of XAML
           [_XamlWindow] : Creates a Window object for XAML control rigging
                [_Toast] : Creates a Toast notification, also DOM based.
             [_UISwitch] : Asks the user if they are sure about given options
             
[Services]

              [_Service] : Get-WMIObject -Classname Win32_Service (each individual service)
             [_Services] : A collection of services as listed above
            [_ViperBomb] : A GUI for managing Windows Services

[Configuration]

                [_Brand] : Sets the item properties fpr branding
             [_Branding] : Injects the branding properties into a target system 
                 [_Root] : Established root folder for module, and it's properties
              [_Company] : Sets/Obtains company information

[Security]

               [_Source] : Deployment Share Source
               [_Target] : Deployment Share Target
                [_Share] : Deployment Share
                  [_Key] : Deployment Share Credential Object
              [_RootVar] : Deployment Share Root Script Variables

[Network]

          [_Certificate] : Obtains a certificate based on external resources
         [_NetInterface] : Gets information for each interface
              [_Network] : Object that obtains all details for a given network or vice versa
            [_V4Network] : IPV4 Network Object/Information
            [_V6Network] : IPV6 Network Object/Information
           [_VendorList] : Mac Address -> Vendor List.
           
# Functions

                   [Add-ACL] : Adds/creates an access control list for a folder.
        [Complete-IISServer] : Completes the installation of an IIS Server for BITS/MDT
           [Get-Certificate] : Obtains external address, telemetry, to use for certificate generation/AD population
              [Get-FEModule] : Obtains the FightingEntropy module, and exposes its functions and content.
      [Get-ServerDependency] : Determines if the current server has installation criteria met
             [Get-ViperBomb] : Opens the ViperBomb GUI
         [Install-IISServer] : Installs the components needed for a BITS/MDT Server
             [New-ACLObject] : Creates a template of file system permissions that can be applied to a file/folder
             [New-FECompany] : Creates a new template for FightingEntropy deployment shares
            [Remove-FEShare] : Removes a FightingEntropy deployment share
    [Show-ToastNotification] : Sends a toast notification
              [Write-Banner] : Writes a colored banner to the console.
                [Write-Flag] : Writes a colored US American Flag to the console.
               [Write-Theme] : Stylizes a given object in the console

# Control

              [Computer.png] : FightingEntropy icon
           [DefaultApps.xml] : (Outdated, placeholder)
          [MDTClientMod.xml] : Template for standard MDT client operating system installation
          [MDTServerMod.xml] : Template for standard MDT server operating system installation
          [PSDClientMod.xml] : Template for standard PSD client operating system installation
          [PSDServerMod.xml] : Template for standard PSD server operating system installation
          [header-image.png] : FightingEntropy style bar

# Graphics

                 [OEMbg.jpg] : 4K resolution picture of the Corning Tower in Albany NY (with banner)
               [OEMlogo.bmp] : 120x120 bitmap, system icon badge
            [background.jpg] : 4K resolution picture of the Corning Tower in Albany NY (b/w gradient)
                [banner.png] : Company badge/banner
                  [icon.ico] : Icon for applications

# Dependencies

[Microsoft Deployment Toolkit] - Needed for configuring new deployment shares

    It is *the* toolkit...
    ...that Microsoft themselves uses...
    ...to deploy additional toolkits.

    It's not that weird.
    You're just thinking way too far into it, honestly.

    Regardless... it is quite a fearsome toolkit to have in one's pocket.
    Or, wherever really...
    ...at any given time.

    When you need to be taken seriously...?
    Well, it *should* be the first choice on one's agenda.
    But that's up to you.

    The [Microsoft Deployment Toolkit].
    Even Mr. Gates thinks it's awesome.
    
[Windows Assessment and Deployment Kit] - Needed
[Windows Preinstallation Environment Kit] - Needed


# The philosophy behind "FightingEntropy"

    With usage of this module, you will gain the ability to ... *list*

    When it comes to Write-Theme, whether for comedic intentions, OR, in the case of just wanting to be a general, all-around, 
    passed-many-a-checkered-flag-for-first-place-at-everything...-in-their-day-without-even-really-trying, 
    type of person..?

    Like Ricky Bobby, in the classic, hit movie, "Talledaga Nights"... when he says, "If you're not first, you're last..."

    Well... this module is dedicated to the people that keep trying to race this dude anyway.

    The types of high-shelf, category-5-hurricane's-in-their-mind-on-a-daily-basis, for years... 
    clever, engineering-marvel, master-extraordinaires... 
    some of them might even be war torn veterans who have seen a lot... done a lot. 
    
    Calculated as many functions, as they have had to snap a neck or two... 
    ...which is why they're the assassin grade programmers that everyone should be worried about.

    Whether they are literally or metaphorically that good..? 
    Well, snapping necks and cashing checks is in their MO.

    Maybe they have some stories that easily turn the most rock-hearted, brute force, men... 
    into a bunch of weepy little girls...

    Stories that even though you or anyone else may have heard before? The way they tell this story never gets old... 
    Everybody might actually try to walk out of the room as quickly as possible... 
    BEFORE they go on yet another "Did I ever tell you the story about the time that I ...?"

    Because everybody knows, that as soon as this person does this... 
    and hears this aforementioned awesome, story begin with that phrase...? 
    
    They know they're in for a 3 day adventure. 
    Where they're just getting paid to stand there and listen to this person's life story... 
    ...from the reflection pools of Washington DC, to the Louisiana Bayou, or Grand Canyon... 
    ...perhaps even wading through waist-high-water flash floods from torrential Asian-Monsoons... 
    ...having to carry your best friend to safety while he's dying...

    Maybe Tom Clancy could have a major involvement in the writing of the book, about the series of events based on 
    these people in particular... Maybe there's an instance where Tom Clancy just got up one day after hearing about 
    this story taking place... he just... randomly, out of the blue... said "Hey, I want to write a book about this."

    Perhaps the character for which Tom Clancy successfully envisioned, AND created... 
    ...as a direct result of observing the most clever bastards out there... 
    ...a character based on none other than the real person that Tom Clancy thought'd be perfect...
    ...to recruit as an acting replacement for Tom Cruise.

    He figured, Mr. Cruise is in all 14 Mission Impossible movies. 
    Sorta has an acting monopoly on good spy operative movies... 
    
    It is pretty easy to see how he's 'first place' material though... 
    Losing Goose in Top Gun really drew out the perfect storm for Tom Cruises acting abilities to take root...
    ...and manifest into the much more mature version of the character that he's been able to tap into, on command...
    ...cause his best buddy Goose died.

    Because... I heard that Tom took it really hard when he lost Goose. Not Tom Clancy... Tom Cruise. 
    I gotta say... I think that losing Goose could traumatize anybody, let alone any hardened warrior/soldier...

    Now, look... what I've just spent the last few paragraphs stating...
    ...that's just a *preview* of the level I will have to rise to... 
    ...in order to merely *describe*... 
    ...the type of person who could fill Tom Cruises shoes any day of the week.
    
    Because while Tom *acts* like he's a super secret top notch spy..?

    Well, the people that *this module* is written for, and dedicated to... 
    They're the type of people that could call their spy buddies that live down the street. 
    To keep tabs on you, anywhere/everywhere..? 
    But they don't. 
    They could also just out of nowhere, take a vacation whenever, wherever, go, see, do... 
    at the drop of a pin... but- they don't do that either. 
    Why...?

    - long pause -
    
    Because they're too busy being awesome. That's why...

    So what you're left with, is a description of the type of grade/character of somebody who should have gotten a 
    Nobel Peace Prize by now. And in this specific (person/people)'s case, in my opinion, it just so happens to be the case...
    That it is actually possible to make something that's too peaceful to receive a Nobel Peace Prize.

    It's like what I'd imagine a director at the Oscars goes through, when they get 'snubbed' for an Academy Award/Oscar.
    
    Some people have done plenty of things to get this damn thing, and yet, the prize continues to be given to Suzy Q down 
    the street. You say to yourself, that's odd... I know who that girl is. Turns out, she read this dude's Facebook posts
    every day, and... miraculously, it led to her getting a Nobel Peace Prize.
    
    I'm not saying that there IS a specific case of this having happened to (person/persons)... but maybe I am.
    
    Whatever the case may be... maybe you get this underground, back-stage version of events, where (that person/those people)
    *definitely* won at least 12 of them by now... You'd think it'd upset them that they can't go around telling people... 

    [Tangent : Skit]
    
    "Yeah I've got 12 of those." you announce, like a king.
    A person hears you, waits a second. 
    They didn't think you were talking to them, and the delay is noticed, causing the conversation to begin awkwardly.
    
    "Uh.. Ok? What are you telling *me* for? 12 what?"
    
    "Ah. I knew you'd ask. Nobel Peace Prizes." you announce, like a king.
    The person you just said that to, they're confused. 
    "Wait, huh?"
    
    "You asked me 12 what. Nobel Peace Prizes."
    "Didn't think that was possible... sounds like you're making that up."
    "No, I'm not."
    "You've got 12 Nobel Peace Prizes?"
    "Yes." you announce, like a king.
    "12 of them?"
    "Yeah man."

    [End Skit]

    This is the module that hopes, or attempts to be... one that was specifically tailor made...
    ...for the limited few people in this world that happen to have a constant category 5 hurricane going on in their mind every day... 
    ...and yet, they're as peaceful as can be.

    Getting snubbed for that many peace prizes should send any sane man that deserves one, over the edge.
    I just don't know how they do it. 
    
    Being told that you're too peaceful to receive a Nobel Peace Prize?
    Is it worse than never actually getting one, and everybody fake saying "You'll get one someday buddy!"

    What I just described, it *should* be enough to drive any one of these people I just described... into a frenzy.
    
    Maybe they deserve this prize. Perhaps they have put less thought into it than I have, but... now they realize they
    don't have a Nobel Peace Prize, but *now* they do.

    I could imagine, in a much less sarcastic tone... that some rich goodie two shoes saying to themselves...
    "I've got plenty of money folks. All that time... the money wasn't even what I wanted. 
    People kept giving it to me anyway, so... wasn't gonna turn that down.

    I was so friggen skilled at doing what I did to become rich and famous... 
    I eventually got bored of destroying my best records. 
    So... I started going around helping OTHER people in need. 
    Gave myself an even more difficult challenge. 

    However... all my good deeds aside...? 
    The world has largely ignored the one need that I still have to this day...
    That is...? 

    My need to receive one of these peace prizes."
    
    You might think i'm just kidding, or that I'm making up a really unbelievable situation... 
    
    But you would be shocked at how much of this is an accurate story... about the guy that this module was written for.

    Maybe this guy earned it fair and square. 
    20 times over, even... 
    And yet...? 
    The man unable to obtain this prize... 

    He and his wife have changed the world... but- still no Nobel Peace Prize.
    Once everybody realizes how messed up that is... they'll understand what I had to live through to write this thing.

    [Final Thought]
    FightingEntropy might not be that extreme, where it winds up earning a Nobel Peace Prize or anything like that.
    But it'll help people feel less salty over time.

    It could eventually help build a new generation of smart people...
    
