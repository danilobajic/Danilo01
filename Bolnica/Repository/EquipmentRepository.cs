﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace Bolnica.Manager
{
    internal class EquipmentRepository
    {
        private static string projectPath = System.Reflection.Assembly.GetExecutingAssembly().Location
        .Split(new string[] { "bin" }, StringSplitOptions.None)[0];

        public EquipmentRepository()
        {
           //equipment = (List<Equipment>)Deserialize();
        }
        public Equipment Read(String id)
        {
            foreach (Equipment e in equipment)
                if (e.RoomID == id)
                    return e;
            return null;
        }

        public List<Equipment> ReadAll()
        {
            return equipment;
        }
        public void Serialize()
        {
            AllToCSV(equipment);
        }
        public IEnumerable<Equipment> Deserialize()
        {
            return (List<Equipment>)File.ReadAllLines(projectPath + "\\Resources\\CSVFiles\\equipment.csv").Select(FromCSV);

        }


        public void AppendLineToFile(string line)
        {
            File.AppendAllText(projectPath + "\\Resources\\CSVFiles\\equipment.csv", line + Environment.NewLine);
        }


        public void AllToCSV(IEnumerable<Equipment> renovations)
        {
            File.WriteAllText(projectPath + "\\Resources\\CSVFiles\\equipment.csv", string.Empty);
            foreach (Equipment e in equipment)
            {
                AppendLineToFile(ToCSV(e));
            }
        }

        public String ToCSV(Equipment equipment)    //serialization
        {
            return string.Join("^", equipment.RoomID, equipment.EquipmentType);
        }

        public Equipment FromCSV(String eqFormat)     //deserialization
        {
            var tokens = eqFormat.Split("^".ToCharArray());
            //return new Rooms(Convert.ToInt32(tokens[0]),Convert.ToString(tokens[1]), (RoomsType)Enum.Parse(typeof(RoomsType), tokens[1]), Convert.ToSingle(tokens[2]), Convert.ToInt32(tokens[3]), Convert.ToInt32(tokens[4]));
            return new Equipment(Convert.ToString(tokens[0]),(EquipmentType)Enum.Parse(typeof(EquipmentType),tokens[1]),Convert.ToString(tokens[2]));
        }

        public List<Equipment> equipment = new List<Equipment>();
    }
}
