﻿using static Domain.SnackPile;

namespace Domain
{
    public class Slot : Entity
    {
        public int Position { get; set; }

        public SnackPile SnackPile { get; set; }

        public SnackMachine SnackMachine { get; set; }

        public Slot()
        {
        }

        public Slot(SnackMachine snackMachine, int position)
            : this()
        {
            SnackMachine = snackMachine;
            Position = position;
            SnackPile = Empty;
        }
    }
}