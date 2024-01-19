tableextension 50001 "Item Categories Ext" extends "Item Category"
{
    fields
    {
        field(50001; "Tarrif No."; Code[20])
        {
            TableRelation = "Tariff Number";
        }
    }
}
// {
//   "id": "437dbf0e-84ff-417a-965d-ed2bb9650972",
//   "name": "Base Application",
//   "version": "22.5.59966.60728",
//   "publisher": "Microsoft"
// },

// {
//   "id": "1eb0194b-ba8a-4f4d-a046-b2609dd899f1",
//   "name": "AumaLusa",
//   "publisher": "SQD",
//   "version": "1.0.0.0",
//   "runtime": "11.1",
//   "target": "Cloud",
//   "platform": "22.0.60694.0",
//   "resourceExposurePolicy": {
//     "allowDebugging": true,
//     "allowDownloadingSource": true,
//     "includeSourceInSymbolFile": true,
//     "applyToDevExtension": false
//   },
//   "dependencies": [

//     {
//       "id": "0b0a0933-50d9-4352-8803-7bf91e6c5491",
//       "name": "SOFTSTORE Localization Pack for Portugal",
//       "version": "22.0.1905.9",
//       "publisher": "Softstore SA"
//     }

//   ],
//   "idRanges": [
//     {
//       "from": 50000,
//       "to": 99000
//     }
//   ],
//   "features": ["TranslationFile",
//   "GenerateCaptions"]
// }