﻿using System;
using System.Collections.Generic;


namespace SoundSharp
{
    struct MP3Player
    {
        public int id;
        public string make;
        public string model;
        public double mbSize;
        public float price;
    }

    class Program
    {
        const int ALLOWED_AUTHENTICATION_ATTEMPTS = 3;

        static void Main(string[] args)
        {
            Console.WriteLine("Vul uw naam in:");
            var name = Console.ReadLine();
            var auth = Login();

            switch (auth)
            {
                case "NietOK":
                    Console.WriteLine("Het is niet gelukt om u in te loggen.");
                    break;

                case "OK":
                    Console.WriteLine("Welkom bij SoundSharp, " + name + "!");
                    ShowMenu();
                    break;

                default:
                    Console.WriteLine("U heeft niks ingevult, hierbij gaan wij er van uit dat u SoundSharp wilt afsluiten.");
                    break;
            }

            /* Pause the script */
            Console.WriteLine("Druk op Enter om door te gaan...");
            Console.ReadLine();
        }

        static void ShowMenu()
        {
            IDictionary<char, string> menu = new Dictionary<char, string>();
            menu['1'] = "Overzicht mp3 spelers";
            menu['2'] = "Toon voorraad";
            menu['9'] = "Exit";

            foreach (KeyValuePair<char, string> menuItem in menu)
                Console.WriteLine(menuItem.Key + ". " + menuItem.Value);

            while (true)
            {
                var input = Console.ReadKey(true);

                if (menu.ContainsKey(input.KeyChar))
                {
                    Console.Clear();
                    Console.WriteLine("Gekoze actie: " + menu[input.KeyChar]);

                    switch (input.KeyChar)
                    {
                        case '1':
                            ShowMP3Players();
                            break;

                        case '2':
                            ShowVoorraad();
                            break;

                        case '9':
                            Console.WriteLine("Tot ziens!");
                            return;
                    }
                }
            }
        }


        static void ShowVoorraad()
        {
            Console.WriteLine("Om het programma af te sluiten, druk op cijfertoets 9");
            Console.WriteLine("Voorraad:        ");
        }

        static void ShowMP3Players()
        {
            MP3Player[] mp3Players = GetMP3Players();

            foreach (MP3Player mp3Player in mp3Players)
            {
                Console.WriteLine(""); // Spacing
                Console.WriteLine(""); // Spacing
                Console.WriteLine("mp3 speler " + mp3Player.id + ":");
                Console.WriteLine(""); // Spacing
                Console.WriteLine("Merk:             " + mp3Player.make);
                Console.WriteLine("Model:            " + mp3Player.model);
                Console.WriteLine("Opslagcapaciteit: " + mp3Player.mbSize + " MB");
                Console.WriteLine("Prijs:            " + mp3Player.price);
            }
        }

        static MP3Player[] GetMP3Players()
        {
            MP3Player[] mp3Players = new MP3Player[5];

            MP3Player mp3Player;

            mp3Player.id = 1;
            mp3Player.make = "GET technologies .inc";
            mp3Player.model = "HF 410";
            mp3Player.mbSize = 4096;
            mp3Player.price = 129.95f;
            mp3Players[0] = mp3Player;

            mp3Player.id = 2;
            mp3Player.make = "Far & Loud";
            mp3Player.model = "XM 600";
            mp3Player.mbSize = 8192;
            mp3Player.price = 224.95f;
            mp3Players[1] = mp3Player;

            mp3Player.id = 3;
            mp3Player.make = "Innotivative";
            mp3Player.model = "Z3";
            mp3Player.mbSize = 512;
            mp3Player.price = 79.95f;
            mp3Players[2] = mp3Player;

            mp3Player.id = 4;
            mp3Player.make = "Resistance S.A.";
            mp3Player.model = "3001";
            mp3Player.mbSize = 4096;
            mp3Player.price = 124.95f;
            mp3Players[3] = mp3Player;

            mp3Player.id = 5;
            mp3Player.make = "CBA";
            mp3Player.model = "NXT volume";
            mp3Player.mbSize = 2048;
            mp3Player.price = 159.05f;
            mp3Players[4] = mp3Player;

            return mp3Players;
        }

        static string Login()
        {
            var attemptsLeft = ALLOWED_AUTHENTICATION_ATTEMPTS;

            while (true)
            {
                if (attemptsLeft == 1)
                    Console.WriteLine("(LET OP: Laatste poging!)");
                else
                    Console.WriteLine("(Poging " + attemptsLeft + " van " + ALLOWED_AUTHENTICATION_ATTEMPTS + ")");

                Console.WriteLine("Vul het juiste wachtwoord in:");
                var password = Console.ReadLine();
                Console.Clear();

                if (password == "")
                    return "Onbekend";
                else if (password == "SHARPSOUND")
                    return "OK";
                else if (password == "dikzak")
                    return "OK";

                if (--attemptsLeft <= 0)
                    break;

                Console.WriteLine("Dit wachtwoord is onjuist, probeert u het opnieuw.");
            }

            return "NietOK";
        }
    }
}