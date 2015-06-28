.class public final Lcom/waze/install/SelectCountryActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SelectCountryActivity.java"


# static fields
.field private static countryCodes:[Ljava/lang/String;

.field private static countryNames:[Ljava/lang/String;

.field private static specialCountries:[Ljava/lang/String;


# instance fields
.field private countries:[Lcom/waze/settings/SettingsValue;

.field private nativeManager:Lcom/waze/NativeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 101
    const-string v1, "US"

    aput-object v1, v0, v3

    const-string v1, "IT"

    aput-object v1, v0, v4

    const-string v1, "FR"

    aput-object v1, v0, v5

    const-string v1, "GB"

    aput-object v1, v0, v6

    const-string v1, "ES"

    aput-object v1, v0, v7

    .line 100
    sput-object v0, Lcom/waze/install/SelectCountryActivity;->specialCountries:[Ljava/lang/String;

    .line 104
    const/16 v0, 0xf9

    new-array v0, v0, [Ljava/lang/String;

    .line 105
    const-string v1, "AF"

    aput-object v1, v0, v3

    .line 106
    const-string v1, "AX"

    aput-object v1, v0, v4

    .line 107
    const-string v1, "AL"

    aput-object v1, v0, v5

    .line 108
    const-string v1, "DZ"

    aput-object v1, v0, v6

    .line 109
    const-string v1, "AS"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 110
    const-string v2, "AD"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 111
    const-string v2, "AO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 112
    const-string v2, "AI"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 113
    const-string v2, "AQ"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 114
    const-string v2, "AG"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 115
    const-string v2, "AR"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 116
    const-string v2, "AM"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 117
    const-string v2, "AW"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 118
    const-string v2, "AU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 119
    const-string v2, "AT"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 120
    const-string v2, "AZ"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 121
    const-string v2, "BS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 122
    const-string v2, "BH"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 123
    const-string v2, "BD"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 124
    const-string v2, "BB"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 125
    const-string v2, "BY"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 126
    const-string v2, "BE"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 127
    const-string v2, "BZ"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 128
    const-string v2, "BJ"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 129
    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 130
    const-string v2, "BT"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 131
    const-string v2, "BO"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 132
    const-string v2, "BQ"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 133
    const-string v2, "BA"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 134
    const-string v2, "BW"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 135
    const-string v2, "BV"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 136
    const-string v2, "BR"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 137
    const-string v2, "IO"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 138
    const-string v2, "BN"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 139
    const-string v2, "BG"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 140
    const-string v2, "BF"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 141
    const-string v2, "BI"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 142
    const-string v2, "KH"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 143
    const-string v2, "CM"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 144
    const-string v2, "CA"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 145
    const-string v2, "CV"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 146
    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 147
    const-string v2, "CF"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 148
    const-string v2, "TD"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 149
    const-string v2, "CL"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 150
    const-string v2, "CN"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 151
    const-string v2, "CX"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 152
    const-string v2, "CC"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 153
    const-string v2, "CO"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 154
    const-string v2, "KM"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 155
    const-string v2, "CG"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 156
    const-string v2, "CD"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 157
    const-string v2, "CK"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 158
    const-string v2, "CR"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 159
    const-string v2, "CI"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 160
    const-string v2, "HR"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 161
    const-string v2, "CU"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 162
    const-string v2, "CW"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 163
    const-string v2, "CY"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 164
    const-string v2, "CZ"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 165
    const-string v2, "DK"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 166
    const-string v2, "DJ"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    .line 167
    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    .line 168
    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 169
    const-string v2, "EC"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    .line 170
    const-string v2, "EG"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    .line 171
    const-string v2, "SV"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    .line 172
    const-string v2, "GQ"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    .line 173
    const-string v2, "ER"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    .line 174
    const-string v2, "EE"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    .line 175
    const-string v2, "ET"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    .line 176
    const-string v2, "FK"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    .line 177
    const-string v2, "FO"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    .line 178
    const-string v2, "FJ"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    .line 179
    const-string v2, "FI"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    .line 180
    const-string v2, "FR"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    .line 181
    const-string v2, "GF"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    .line 182
    const-string v2, "PF"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    .line 183
    const-string v2, "TF"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    .line 184
    const-string v2, "GA"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    .line 185
    const-string v2, "GM"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    .line 186
    const-string v2, "GE"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    .line 187
    const-string v2, "DE"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    .line 188
    const-string v2, "GH"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    .line 189
    const-string v2, "GI"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    .line 190
    const-string v2, "GR"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    .line 191
    const-string v2, "GL"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    .line 192
    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    .line 193
    const-string v2, "GP"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    .line 194
    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    .line 195
    const-string v2, "GT"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    .line 196
    const-string v2, "GG"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    .line 197
    const-string v2, "GN"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    .line 198
    const-string v2, "GW"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    .line 199
    const-string v2, "GY"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    .line 200
    const-string v2, "HT"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    .line 201
    const-string v2, "HM"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    .line 202
    const-string v2, "VA"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    .line 203
    const-string v2, "HN"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    .line 204
    const-string v2, "HK"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    .line 205
    const-string v2, "HU"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    .line 206
    const-string v2, "IS"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    .line 207
    const-string v2, "IN"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    .line 208
    const-string v2, "ID"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    .line 209
    const-string v2, "IR"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    .line 210
    const-string v2, "IQ"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    .line 211
    const-string v2, "IE"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    .line 212
    const-string v2, "IM"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    .line 213
    const-string v2, "IL"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    .line 214
    const-string v2, "IT"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    .line 215
    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    .line 216
    const-string v2, "JP"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    .line 217
    const-string v2, "JE"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    .line 218
    const-string v2, "JO"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    .line 219
    const-string v2, "KZ"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    .line 220
    const-string v2, "KE"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    .line 221
    const-string v2, "KI"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    .line 222
    const-string v2, "KP"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    .line 223
    const-string v2, "KR"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    .line 224
    const-string v2, "KW"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    .line 225
    const-string v2, "KG"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    .line 226
    const-string v2, "LA"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    .line 227
    const-string v2, "LV"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    .line 228
    const-string v2, "LB"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    .line 229
    const-string v2, "LS"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    .line 230
    const-string v2, "LR"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    .line 231
    const-string v2, "LY"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    .line 232
    const-string v2, "LI"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    .line 233
    const-string v2, "LT"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    .line 234
    const-string v2, "LU"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    .line 235
    const-string v2, "MO"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    .line 236
    const-string v2, "MK"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    .line 237
    const-string v2, "MG"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    .line 238
    const-string v2, "MW"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    .line 239
    const-string v2, "MY"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    .line 240
    const-string v2, "MV"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    .line 241
    const-string v2, "ML"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    .line 242
    const-string v2, "MT"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    .line 243
    const-string v2, "MH"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    .line 244
    const-string v2, "MQ"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    .line 245
    const-string v2, "MR"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    .line 246
    const-string v2, "MU"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    .line 247
    const-string v2, "YT"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    .line 248
    const-string v2, "MX"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    .line 249
    const-string v2, "FM"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    .line 250
    const-string v2, "MD"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    .line 251
    const-string v2, "MC"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    .line 252
    const-string v2, "MN"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    .line 253
    const-string v2, "ME"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    .line 254
    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    .line 255
    const-string v2, "MA"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    .line 256
    const-string v2, "MZ"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    .line 257
    const-string v2, "MM"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    .line 258
    const-string v2, "NA"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    .line 259
    const-string v2, "NR"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    .line 260
    const-string v2, "NP"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    .line 261
    const-string v2, "NL"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    .line 262
    const-string v2, "NC"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    .line 263
    const-string v2, "NZ"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    .line 264
    const-string v2, "NI"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    .line 265
    const-string v2, "NE"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    .line 266
    const-string v2, "NG"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    .line 267
    const-string v2, "NU"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    .line 268
    const-string v2, "NF"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    .line 269
    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    .line 270
    const-string v2, "NO"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    .line 271
    const-string v2, "OM"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    .line 272
    const-string v2, "PK"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    .line 273
    const-string v2, "PW"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    .line 274
    const-string v2, "PS"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    .line 275
    const-string v2, "PA"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    .line 276
    const-string v2, "PG"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    .line 277
    const-string v2, "PY"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    .line 278
    const-string v2, "PE"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    .line 279
    const-string v2, "PH"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    .line 280
    const-string v2, "PN"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    .line 281
    const-string v2, "PL"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    .line 282
    const-string v2, "PT"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    .line 283
    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    .line 284
    const-string v2, "QA"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    .line 285
    const-string v2, "RE"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    .line 286
    const-string v2, "RO"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    .line 287
    const-string v2, "RU"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    .line 288
    const-string v2, "RW"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    .line 289
    const-string v2, "BL"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    .line 290
    const-string v2, "SH"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    .line 291
    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    .line 292
    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    .line 293
    const-string v2, "MF"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    .line 294
    const-string v2, "PM"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    .line 295
    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    .line 296
    const-string v2, "WS"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    .line 297
    const-string v2, "SM"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    .line 298
    const-string v2, "ST"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    .line 299
    const-string v2, "SA"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    .line 300
    const-string v2, "SN"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    .line 301
    const-string v2, "RS"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    .line 302
    const-string v2, "SC"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    .line 303
    const-string v2, "SL"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    .line 304
    const-string v2, "SG"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    .line 305
    const-string v2, "SX"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    .line 306
    const-string v2, "SK"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    .line 307
    const-string v2, "SI"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    .line 308
    const-string v2, "SB"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    .line 309
    const-string v2, "SO"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    .line 310
    const-string v2, "ZA"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    .line 311
    const-string v2, "GS"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    .line 312
    const-string v2, "SS"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    .line 313
    const-string v2, "ES"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    .line 314
    const-string v2, "LK"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    .line 315
    const-string v2, "SD"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    .line 316
    const-string v2, "SR"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    .line 317
    const-string v2, "SJ"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    .line 318
    const-string v2, "SZ"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    .line 319
    const-string v2, "SE"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    .line 320
    const-string v2, "CH"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    .line 321
    const-string v2, "SY"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    .line 322
    const-string v2, "TW"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    .line 323
    const-string v2, "TJ"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    .line 324
    const-string v2, "TZ"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    .line 325
    const-string v2, "TH"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    .line 326
    const-string v2, "TL"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    .line 327
    const-string v2, "TG"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    .line 328
    const-string v2, "TK"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    .line 329
    const-string v2, "TO"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    .line 330
    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    .line 331
    const-string v2, "TN"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    .line 332
    const-string v2, "TR"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    .line 333
    const-string v2, "TM"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    .line 334
    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    .line 335
    const-string v2, "TV"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    .line 336
    const-string v2, "UG"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    .line 337
    const-string v2, "UA"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    .line 338
    const-string v2, "AE"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    .line 339
    const-string v2, "GB"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    .line 340
    const-string v2, "US"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    .line 341
    const-string v2, "UM"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    .line 342
    const-string v2, "UY"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    .line 343
    const-string v2, "UZ"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    .line 344
    const-string v2, "VU"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    .line 345
    const-string v2, "VE"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    .line 346
    const-string v2, "VN"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    .line 347
    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    .line 348
    const-string v2, "VI"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    .line 349
    const-string v2, "WF"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    .line 350
    const-string v2, "EH"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    .line 351
    const-string v2, "YE"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    .line 352
    const-string v2, "ZM"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    .line 353
    const-string v2, "ZW"

    aput-object v2, v0, v1

    .line 104
    sput-object v0, Lcom/waze/install/SelectCountryActivity;->countryCodes:[Ljava/lang/String;

    .line 355
    const/16 v0, 0xf9

    new-array v0, v0, [Ljava/lang/String;

    .line 356
    const-string v1, "Afghanistan"

    aput-object v1, v0, v3

    .line 357
    const-string v1, "Aland Islands"

    aput-object v1, v0, v4

    .line 358
    const-string v1, "Albania"

    aput-object v1, v0, v5

    .line 359
    const-string v1, "Algeria"

    aput-object v1, v0, v6

    .line 360
    const-string v1, "American Samoa"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 361
    const-string v2, "Andorra"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 362
    const-string v2, "Angola"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 363
    const-string v2, "Anguilla"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 364
    const-string v2, "Antarctica"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 365
    const-string v2, "Antigua and Barbuda"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 366
    const-string v2, "Argentina"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 367
    const-string v2, "Armenia"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 368
    const-string v2, "Aruba"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 369
    const-string v2, "Australia"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 370
    const-string v2, "Austria"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 371
    const-string v2, "Azerbaijan"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 372
    const-string v2, "Bahamas"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 373
    const-string v2, "Bahrain"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 374
    const-string v2, "Bangladesh"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 375
    const-string v2, "Barbados"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 376
    const-string v2, "Belarus"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 377
    const-string v2, "Belgium"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 378
    const-string v2, "Belize"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 379
    const-string v2, "Benin"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 380
    const-string v2, "Bermuda"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 381
    const-string v2, "Bhutan"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 382
    const-string v2, "Bolivia, Plurinational State of"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 383
    const-string v2, "Bonaire, Sint Eustatius and Saba"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 384
    const-string v2, "Bosnia and Herzegovina"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 385
    const-string v2, "Botswana"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 386
    const-string v2, "Bouvet Island"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 387
    const-string v2, "Brazil"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 388
    const-string v2, "British Indian Ocean Territory"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 389
    const-string v2, "Brunei Darussalam"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 390
    const-string v2, "Bulgaria"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 391
    const-string v2, "Burkina Faso"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 392
    const-string v2, "Burundi"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 393
    const-string v2, "Cambodia"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 394
    const-string v2, "Cameroon"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 395
    const-string v2, "Canada"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 396
    const-string v2, "Cape Verde"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 397
    const-string v2, "Cayman Islands"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 398
    const-string v2, "Central African Republic"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 399
    const-string v2, "Chad"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 400
    const-string v2, "Chile"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 401
    const-string v2, "China"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 402
    const-string v2, "Christmas Island"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 403
    const-string v2, "Cocos (Keeling) Islands"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 404
    const-string v2, "Colombia"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 405
    const-string v2, "Comoros"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 406
    const-string v2, "Congo"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 407
    const-string v2, "Congo, the Democratic Republic of the"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 408
    const-string v2, "Cook Islands"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 409
    const-string v2, "Costa Rica"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 410
    const-string v2, "Cote d\'Ivoire"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 411
    const-string v2, "Croatia"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 412
    const-string v2, "Cuba"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 413
    const-string v2, "Cura\u221a\u00dfao"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 414
    const-string v2, "Cyprus"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 415
    const-string v2, "Czech Republic"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 416
    const-string v2, "Denmark"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 417
    const-string v2, "Djibouti"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    .line 418
    const-string v2, "Dominica"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    .line 419
    const-string v2, "Dominican Republic"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 420
    const-string v2, "Ecuador"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    .line 421
    const-string v2, "Egypt"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    .line 422
    const-string v2, "El Salvador"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    .line 423
    const-string v2, "Equatorial Guinea"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    .line 424
    const-string v2, "Eritrea"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    .line 425
    const-string v2, "Estonia"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    .line 426
    const-string v2, "Ethiopia"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    .line 427
    const-string v2, "Falkland Islands (Malvinas)"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    .line 428
    const-string v2, "Faroe Islands"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    .line 429
    const-string v2, "Fiji"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    .line 430
    const-string v2, "Finland"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    .line 431
    const-string v2, "France"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    .line 432
    const-string v2, "French Guiana"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    .line 433
    const-string v2, "French Polynesia"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    .line 434
    const-string v2, "French Southern Territories"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    .line 435
    const-string v2, "Gabon"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    .line 436
    const-string v2, "Gambia"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    .line 437
    const-string v2, "Georgia"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    .line 438
    const-string v2, "Germany"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    .line 439
    const-string v2, "Ghana"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    .line 440
    const-string v2, "Gibraltar"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    .line 441
    const-string v2, "Greece"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    .line 442
    const-string v2, "Greenland"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    .line 443
    const-string v2, "Grenada"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    .line 444
    const-string v2, "Guadeloupe"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    .line 445
    const-string v2, "Guam"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    .line 446
    const-string v2, "Guatemala"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    .line 447
    const-string v2, "Guernsey"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    .line 448
    const-string v2, "Guinea"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    .line 449
    const-string v2, "Guinea-Bissau"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    .line 450
    const-string v2, "Guyana"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    .line 451
    const-string v2, "Haiti"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    .line 452
    const-string v2, "Heard Island and McDonald Islands"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    .line 453
    const-string v2, "Holy See (Vatican City State)"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    .line 454
    const-string v2, "Honduras"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    .line 455
    const-string v2, "Hong Kong"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    .line 456
    const-string v2, "Hungary"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    .line 457
    const-string v2, "Iceland"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    .line 458
    const-string v2, "India"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    .line 459
    const-string v2, "Indonesia"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    .line 460
    const-string v2, "Iran, Islamic Republic of"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    .line 461
    const-string v2, "Iraq"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    .line 462
    const-string v2, "Ireland"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    .line 463
    const-string v2, "Isle of Man"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    .line 464
    const-string v2, "Israel"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    .line 465
    const-string v2, "Italy"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    .line 466
    const-string v2, "Jamaica"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    .line 467
    const-string v2, "Japan"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    .line 468
    const-string v2, "Jersey"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    .line 469
    const-string v2, "Jordan"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    .line 470
    const-string v2, "Kazakhstan"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    .line 471
    const-string v2, "Kenya"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    .line 472
    const-string v2, "Kiribati"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    .line 473
    const-string v2, "Korea, Democratic People\'s Republic of"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    .line 474
    const-string v2, "Korea, Republic of"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    .line 475
    const-string v2, "Kuwait"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    .line 476
    const-string v2, "Kyrgyzstan"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    .line 477
    const-string v2, "Lao People\'s Democratic Republic"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    .line 478
    const-string v2, "Latvia"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    .line 479
    const-string v2, "Lebanon"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    .line 480
    const-string v2, "Lesotho"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    .line 481
    const-string v2, "Liberia"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    .line 482
    const-string v2, "Libya"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    .line 483
    const-string v2, "Liechtenstein"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    .line 484
    const-string v2, "Lithuania"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    .line 485
    const-string v2, "Luxembourg"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    .line 486
    const-string v2, "Macao"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    .line 487
    const-string v2, "Macedonia, the former Yugoslav Republic of"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    .line 488
    const-string v2, "Madagascar"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    .line 489
    const-string v2, "Malawi"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    .line 490
    const-string v2, "Malaysia"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    .line 491
    const-string v2, "Maldives"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    .line 492
    const-string v2, "Mali"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    .line 493
    const-string v2, "Malta"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    .line 494
    const-string v2, "Marshall Islands"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    .line 495
    const-string v2, "Martinique"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    .line 496
    const-string v2, "Mauritania"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    .line 497
    const-string v2, "Mauritius"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    .line 498
    const-string v2, "Mayotte"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    .line 499
    const-string v2, "Mexico"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    .line 500
    const-string v2, "Micronesia, Federated States of"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    .line 501
    const-string v2, "Moldova, Republic of"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    .line 502
    const-string v2, "Monaco"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    .line 503
    const-string v2, "Mongolia"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    .line 504
    const-string v2, "Montenegro"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    .line 505
    const-string v2, "Montserrat"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    .line 506
    const-string v2, "Morocco"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    .line 507
    const-string v2, "Mozambique"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    .line 508
    const-string v2, "Myanmar"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    .line 509
    const-string v2, "Namibia"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    .line 510
    const-string v2, "Nauru"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    .line 511
    const-string v2, "Nepal"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    .line 512
    const-string v2, "Netherlands"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    .line 513
    const-string v2, "New Caledonia"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    .line 514
    const-string v2, "New Zealand"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    .line 515
    const-string v2, "Nicaragua"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    .line 516
    const-string v2, "Niger"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    .line 517
    const-string v2, "Nigeria"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    .line 518
    const-string v2, "Niue"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    .line 519
    const-string v2, "Norfolk Island"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    .line 520
    const-string v2, "Northern Mariana Islands"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    .line 521
    const-string v2, "Norway"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    .line 522
    const-string v2, "Oman"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    .line 523
    const-string v2, "Pakistan"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    .line 524
    const-string v2, "Palau"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    .line 525
    const-string v2, "Palestinian territories"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    .line 526
    const-string v2, "Panama"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    .line 527
    const-string v2, "Papua New Guinea"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    .line 528
    const-string v2, "Paraguay"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    .line 529
    const-string v2, "Peru"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    .line 530
    const-string v2, "Philippines"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    .line 531
    const-string v2, "Pitcairn"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    .line 532
    const-string v2, "Poland"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    .line 533
    const-string v2, "Portugal"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    .line 534
    const-string v2, "Puerto Rico"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    .line 535
    const-string v2, "Qatar"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    .line 536
    const-string v2, "Reunion"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    .line 537
    const-string v2, "Romania"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    .line 538
    const-string v2, "Russian Federation"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    .line 539
    const-string v2, "Rwanda"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    .line 540
    const-string v2, "Saint Barthelemy"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    .line 541
    const-string v2, "Saint Helena, Ascension and Tristan da Cunha"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    .line 542
    const-string v2, "Saint Kitts and Nevis"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    .line 543
    const-string v2, "Saint Lucia"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    .line 544
    const-string v2, "Saint Martin (French part)"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    .line 545
    const-string v2, "Saint Pierre and Miquelon"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    .line 546
    const-string v2, "Saint Vincent and the Grenadines"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    .line 547
    const-string v2, "Samoa"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    .line 548
    const-string v2, "San Marino"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    .line 549
    const-string v2, "Sao Tome and Principe"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    .line 550
    const-string v2, "Saudi Arabia"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    .line 551
    const-string v2, "Senegal"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    .line 552
    const-string v2, "Serbia"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    .line 553
    const-string v2, "Seychelles"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    .line 554
    const-string v2, "Sierra Leone"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    .line 555
    const-string v2, "Singapore"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    .line 556
    const-string v2, "Sint Maarten (Dutch part)"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    .line 557
    const-string v2, "Slovakia"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    .line 558
    const-string v2, "Slovenia"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    .line 559
    const-string v2, "Solomon Islands"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    .line 560
    const-string v2, "Somalia"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    .line 561
    const-string v2, "South Africa"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    .line 562
    const-string v2, "South Georgia and the South Sandwich Islands"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    .line 563
    const-string v2, "South Sudan"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    .line 564
    const-string v2, "Spain"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    .line 565
    const-string v2, "Sri Lanka"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    .line 566
    const-string v2, "Sudan"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    .line 567
    const-string v2, "Suriname"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    .line 568
    const-string v2, "Svalbard and Jan Mayen"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    .line 569
    const-string v2, "Swaziland"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    .line 570
    const-string v2, "Sweden"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    .line 571
    const-string v2, "Switzerland"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    .line 572
    const-string v2, "Syrian Arab Republic"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    .line 573
    const-string v2, "Taiwan"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    .line 574
    const-string v2, "Tajikistan"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    .line 575
    const-string v2, "Tanzania, United Republic of"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    .line 576
    const-string v2, "Thailand"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    .line 577
    const-string v2, "Timor-Leste"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    .line 578
    const-string v2, "Togo"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    .line 579
    const-string v2, "Tokelau"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    .line 580
    const-string v2, "Tonga"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    .line 581
    const-string v2, "Trinidad and Tobago"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    .line 582
    const-string v2, "Tunisia"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    .line 583
    const-string v2, "Turkey"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    .line 584
    const-string v2, "Turkmenistan"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    .line 585
    const-string v2, "Turks and Caicos Islands"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    .line 586
    const-string v2, "Tuvalu"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    .line 587
    const-string v2, "Uganda"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    .line 588
    const-string v2, "Ukraine"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    .line 589
    const-string v2, "United Arab Emirates"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    .line 590
    const-string v2, "United Kingdom"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    .line 591
    const-string v2, "United States"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    .line 592
    const-string v2, "United States Minor Outlying Islands"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    .line 593
    const-string v2, "Uruguay"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    .line 594
    const-string v2, "Uzbekistan"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    .line 595
    const-string v2, "Vanuatu"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    .line 596
    const-string v2, "Venezuela, Bolivarian Republic of"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    .line 597
    const-string v2, "Viet Nam"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    .line 598
    const-string v2, "Virgin Islands, British"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    .line 599
    const-string v2, "Virgin Islands, U.S."

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    .line 600
    const-string v2, "Wallis and Futuna"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    .line 601
    const-string v2, "Western Sahara"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    .line 602
    const-string v2, "Yemen"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    .line 603
    const-string v2, "Zambia"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    .line 604
    const-string v2, "Zimbabwe"

    aput-object v2, v0, v1

    .line 355
    sput-object v0, Lcom/waze/install/SelectCountryActivity;->countryNames:[Ljava/lang/String;

    .line 604
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/install/SelectCountryActivity;)[Lcom/waze/settings/SettingsValue;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/waze/install/SelectCountryActivity;->countries:[Lcom/waze/settings/SettingsValue;

    return-object v0
.end method

.method private addCountryToList(Ljava/util/List;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter "country"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/waze/settings/SettingsValue;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/waze/settings/SettingsValue;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, tmpCountries:Ljava/util/List;,"Ljava/util/List<Lcom/waze/settings/SettingsValue;>;"
    .local p2, addedCountries:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, codeToValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/waze/settings/SettingsValue;>;"
    invoke-interface {p2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsValue;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-interface {p2, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    return-void
.end method

.method private initCountries()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 65
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/waze/install/SelectCountryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 66
    .local v3, manager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, myCountry:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 68
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 70
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v6, tmpCountries:Ljava/util/List;,"Ljava/util/List<Lcom/waze/settings/SettingsValue;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 73
    .local v0, addedCountries:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v1, codeToValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/waze/settings/SettingsValue;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v9, Lcom/waze/install/SelectCountryActivity;->countryNames:[Ljava/lang/String;

    array-length v9, v9

    if-lt v2, v9, :cond_2

    .line 79
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 80
    invoke-direct {p0, v6, v0, v1, v4}, Lcom/waze/install/SelectCountryActivity;->addCountryToList(Ljava/util/List;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)V

    .line 82
    :cond_1
    sget-object v9, Lcom/waze/install/SelectCountryActivity;->specialCountries:[Ljava/lang/String;

    array-length v10, v9

    :goto_1
    if-lt v8, v10, :cond_3

    .line 86
    const/4 v2, 0x0

    :goto_2
    sget-object v8, Lcom/waze/install/SelectCountryActivity;->countryNames:[Ljava/lang/String;

    array-length v8, v8

    if-lt v2, v8, :cond_4

    .line 89
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/waze/settings/SettingsValue;

    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/waze/settings/SettingsValue;

    iput-object v8, p0, Lcom/waze/install/SelectCountryActivity;->countries:[Lcom/waze/settings/SettingsValue;

    .line 90
    return-void

    .line 75
    :cond_2
    new-instance v7, Lcom/waze/settings/SettingsValue;

    sget-object v9, Lcom/waze/install/SelectCountryActivity;->countryCodes:[Ljava/lang/String;

    aget-object v9, v9, v2

    sget-object v10, Lcom/waze/install/SelectCountryActivity;->countryNames:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-direct {v7, v9, v10, v8}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    .local v7, value:Lcom/waze/settings/SettingsValue;
    sget-object v9, Lcom/waze/install/SelectCountryActivity;->countryCodes:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v7           #value:Lcom/waze/settings/SettingsValue;
    :cond_3
    aget-object v5, v9, v8

    .line 83
    .local v5, specialCountry:Ljava/lang/String;
    invoke-direct {p0, v6, v0, v1, v5}, Lcom/waze/install/SelectCountryActivity;->addCountryToList(Ljava/util/List;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)V

    .line 82
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 87
    .end local v5           #specialCountry:Ljava/lang/String;
    :cond_4
    sget-object v8, Lcom/waze/install/SelectCountryActivity;->countryCodes:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-direct {p0, v6, v0, v1, v8}, Lcom/waze/install/SelectCountryActivity;->addCountryToList(Ljava/util/List;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)V

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 613
    if-ne p2, v0, :cond_0

    .line 615
    invoke-virtual {p0, v0}, Lcom/waze/install/SelectCountryActivity;->setResult(I)V

    .line 616
    invoke-virtual {p0}, Lcom/waze/install/SelectCountryActivity;->finish()V

    .line 619
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 620
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 608
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 38
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0, v4}, Lcom/waze/install/SelectCountryActivity;->requestWindowFeature(I)Z

    .line 41
    invoke-direct {p0}, Lcom/waze/install/SelectCountryActivity;->initCountries()V

    .line 43
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 44
    const-string v3, "LOCATION_COUNTRY"

    .line 43
    invoke-virtual {v2, v3, v5, v5, v4}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/install/SelectCountryActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 47
    const v2, 0x7f0300fa

    invoke-virtual {p0, v2}, Lcom/waze/install/SelectCountryActivity;->setContentView(I)V

    .line 48
    const v2, 0x7f090058

    invoke-virtual {p0, v2}, Lcom/waze/install/SelectCountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/title/TitleBar;

    iget-object v3, p0, Lcom/waze/install/SelectCountryActivity;->nativeManager:Lcom/waze/NativeManager;

    const v4, 0x7f0700e1

    invoke-virtual {p0, v4}, Lcom/waze/install/SelectCountryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 49
    new-instance v0, Lcom/waze/settings/SettingValueAdapter;

    invoke-direct {v0, p0}, Lcom/waze/settings/SettingValueAdapter;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, adapter:Lcom/waze/settings/SettingValueAdapter;
    const v2, 0x7f090674

    invoke-virtual {p0, v2}, Lcom/waze/install/SelectCountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 51
    .local v1, list:Landroid/widget/ListView;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    new-instance v2, Lcom/waze/install/SelectCountryActivity$1;

    invoke-direct {v2, p0}, Lcom/waze/install/SelectCountryActivity$1;-><init>(Lcom/waze/install/SelectCountryActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    iget-object v2, p0, Lcom/waze/install/SelectCountryActivity;->countries:[Lcom/waze/settings/SettingsValue;

    invoke-virtual {v0, v2}, Lcom/waze/settings/SettingValueAdapter;->setValues([Lcom/waze/settings/SettingsValue;)V

    .line 61
    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 62
    return-void
.end method
