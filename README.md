# Perl Programming Playground Training

<p align="center">
<a href="https://www.blackhatethicalhacking.com"><img src="https://www.blackhatethicalhacking.com/wp-content/uploads/2022/06/BHEH_logo.png" width="300px" alt="BHEH"></a>
</p>

<p align="center">

**Perl coders be like:**

![perl-phyton](https://github.com/blackhatethicalhacking/perl-training-opsec/assets/13942386/32fc6a69-967d-4d45-a58f-833dcb4dffa6)

# Description

Perl is the standard installed in most Debian and Ubuntu based systems. The feature perl is most known for, is its built-in "regexp" handling. This Perl script is a tutorial or example that introduces various aspects of the Perl programming language. It appears to be designed for educational purposes, helping readers learn Perl and its concepts.

Here is the breakdown of the included script:

- **Comments:** Comments in Perl start with a '#' character. They are used to provide explanations and documentation.

- **Random Letter:** The script generates a random letter from the alphabet (a to z) and prints it:

```
@alphabet = ( 'a' .. 'z' );
$letter = $alphabet[int(rand($#alphabet + 1))];
print $letter; # prints random letter between a - z
```

- **Learning Basics:** The script emphasizes that when learning any programming language, you should understand data types, syntax, logic, and data structures. These are essential concepts in programming.

- **Variables:** It demonstrates how to declare and use variables in Perl:

`$a = 12;`

- **Importing Modules:** The script uses the use keyword to import the Convert::Base32 module and specifically the decode_base32 function.

- **File Operations:** It shows how to create, write to, and read from files using Perl.

- **String Manipulation:** Demonstrates string manipulation using regular expressions and concatenation.

- **System Commands:** It uses backticks to execute system commands and capture their output:

```
$commandresult = `whoami`;
print "I am: ".uc($commandresult);
```
- **Functions: Defines** and uses two functions (No_reply and I_gonna_reply) to demonstrate function definition and usage.

- **Socket Programming:** The script uses the `IO::Socket::INET` module to create a simple TCP server that listens on `localhost:1337`. It also creates a daughter script `(/tmp/script.pl)` that connects to this server.

- **Cleanup:** After finishing its tasks, the script removes temporary files created during execution.

- **For example:**

`$string =~ s/DROP\sTABLE/No SQL injection attacks here, thanks!/sgi;`

To use perl on a GNU/Linux distro, its just to start using it. Its preinstalled and ready to go! But if you want to go more advanced, I would recommend updating CPAN and making it ready to use. Check **Installation**.

# Features

🚀 Quick Start

Jumpstart your Perl programming journey with a concise quick start guide. Learn the basics of Perl, including data types, syntax, logic, and data structures.

📚 The Perl Bible
Dive into the extensive Perl documentation available at your fingertips.

[The Perl Bible](https://perldoc.perl.org/) is your comprehensive reference guide for all things Perl. Explore and master Perl's vast ecosystem of functions and modules.

🌟 Highlighted Features

- **Random Letter Generator:** Get hands-on with Perl by generating and printing random letters from the alphabet.
- **Module Import:** Learn how to import external modules using the use keyword and explore practical examples, including Convert::Base32.
- **File Operations:** Master file handling in Perl, from creating and writing to files to reading their content. Avoid common pitfalls with file handling.
- **String Manipulation:** Discover Perl's powerful string manipulation capabilities, including regular expressions and string concatenation.
- **System Commands:** Execute system commands and capture their output with backticks. Get creative with system-level interactions.
- **Functions:** Understand the fundamentals of defining and using functions in Perl. Explore two example functions, No_reply and I_gonna_reply.
- **Socket Programming:** Delve into the world of network programming with Perl. Create a simple TCP server and connect to it from a daughter script.
- **Cleanup:** Learn how to tidy up after your scripts by removing temporary files and resources.

📖 Usage and Learning

This repository serves as both a learning resource and a reference. You can use it in the following ways:

- **Learning Perl:** If you're new to Perl, start with the quick start guide to grasp the basics. Then explore individual features and examples to deepen your understanding.
- **Reference Guide:** As an experienced Perl developer, use this repository as a quick reference for specific Perl functions, modules, or programming techniques.
- **Contribute:** Feel free to contribute your own Perl examples, improvements, or corrections to help the Perl community grow.

**Before diving into the repository, ensure you have the following prerequisites:**

- Perl installed on your system.
- CPAN installed for managing Perl modules.

# Installation

To start CPAN, you do:

`bheh@kali:~$ sudo perl -MCPAN -e shell;`

You will be asked to configure it. The default is a good option for most, but if there is something you dislike, you could always change that option. Then you will appear at the CPAN prompt:

`cpan[1]>`

Then at this prompt, type:

`cpan[1]> install CPAN`

It will update to latest version.
Then when you are back at prompt, type:

```
cpan[2]> reload CPAN
(CPAN__unchanged__v2.18)(CPAN::Author__unchanged__v5.5002)(CPAN::CacheMgr__unchanged__v5.5002)
(CPAN::Complete__unchanged__v5.5001)(CPAN::Debug__unchanged__v5.5001)
(CPAN::DeferredCode__unchanged__v5.50)(CPAN::Distribution__unchanged__v2.18)
(CPAN::Distroprefs__unchanged__v6.0001)(CPAN::Distrostatus__unchanged__v5.5)
(CPAN::Exception::RecursiveDependency.....v5.5001)(CPAN::Exception::yaml_not_installed..v5.5)
(CPAN::FTP__unchanged__v5.5008)(CPAN::FTP::netrc__unchanged__v1.01)
(CPAN::HandleConfig__unchanged__v5.5008)(CPAN::Index__unchanged__v2.12)
(CPAN::InfoObj__unchanged__v5.5)(CPAN::LWP::UserAgent....v1.9601)
(CPAN::Module__unchanged__v5.5003)(CPAN::Prompt__unchanged__v5.5)
(CPAN::Queue__unchanged__v5.5002)(CPAN::Shell__unchanged__v5.5006)
(CPAN::Tarzip__unchanged__v5.5012)(CPAN::Version__unchanged__v5.5003)
11 subroutines redefined

cpan[3]>
```

At this time, you can either install one or more modules:

`cpan[3]> install XXX:XXX`

where `XXX:XXX` is the module name (CaSe SeNsItIvE!!!)

or just exit out if you dont need to use CPAN at this time:

```
cpan[3]> exit
Terminal does not support GetHistory.
Lockfile removed.
bheh@kali:~$
```

# License

This repository is licensed under the MIT License. Feel free to use, modify, and distribute the code as per the terms of this license.

# Contributing

Contributions to this repository are welcome! If you have Perl examples, improvements, or bug fixes to share, please submit a pull request. Be sure to follow our Contributing Guidelines for a smooth collaboration.

# Feedback

For any questions, feedback, or support related to this repository, feel free to open an issue. We value your input and aim to create a helpful and welcoming community.

# Support

If you would like to support us, you can always buy us coffee(s)! :blush:

<a href="https://www.buymeacoffee.com/bheh" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>

Thank you for exploring our Perl programming repository! **Happy coding!** 🚀
