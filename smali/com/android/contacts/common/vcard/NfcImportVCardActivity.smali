.class public Lcom/android/contacts/common/vcard/NfcImportVCardActivity;
.super Landroid/app/Activity;
.source "NfcImportVCardActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/android/contacts/common/vcard/VCardImportExportListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

.field private mRecord:Landroid/nfc/NdefRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    return-void
.end method

.method private startImport()V
    .locals 2

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 204
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 205
    return-void
.end method


# virtual methods
.method createImportRequest()Lcom/android/contacts/common/vcard/ImportRequest;
    .locals 21

    .prologue
    .line 88
    const/4 v11, 0x0

    .line 89
    .local v11, "counter":Lcom/android/vcard/VCardEntryCounter;
    const/4 v13, 0x0

    .line 90
    .local v13, "detector":Lcom/android/vcard/VCardSourceDetector;
    const/4 v9, 0x1

    .line 92
    .local v9, "vcardVersion":I
    :try_start_0
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mRecord:Landroid/nfc/NdefRecord;

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 93
    .local v18, "is":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 94
    new-instance v19, Lcom/android/vcard/VCardParser_V21;

    invoke-direct/range {v19 .. v19}, Lcom/android/vcard/VCardParser_V21;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_5

    .line 96
    .local v19, "parser":Lcom/android/vcard/VCardParser;
    :try_start_1
    new-instance v12, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v12}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .local v12, "counter":Lcom/android/vcard/VCardEntryCounter;
    :try_start_2
    new-instance v14, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v14}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .local v14, "detector":Lcom/android/vcard/VCardSourceDetector;
    :try_start_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/vcard/VCardParser_V21;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 99
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/vcard/VCardParser_V21;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 100
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;)V
    :try_end_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 116
    if-eqz v18, :cond_0

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_4 .. :try_end_4} :catch_9

    :cond_0
    :goto_0
    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .line 132
    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v18    # "is":Ljava/io/ByteArrayInputStream;
    .end local v19    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    :goto_1
    new-instance v2, Lcom/android/contacts/common/vcard/ImportRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mRecord:Landroid/nfc/NdefRecord;

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f0900bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v7

    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntryCounter;->getCount()I

    move-result v10

    invoke-direct/range {v2 .. v10}, Lcom/android/contacts/common/vcard/ImportRequest;-><init>(Landroid/accounts/Account;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V

    :cond_1
    :goto_2
    return-object v2

    .line 101
    .restart local v18    # "is":Ljava/io/ByteArrayInputStream;
    .restart local v19    # "parser":Lcom/android/vcard/VCardParser;
    :catch_0
    move-exception v16

    move-object v14, v13

    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v12, v11

    .line 102
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .local v16, "e1":Lcom/android/vcard/exception/VCardVersionException;
    :goto_3
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 103
    const/4 v9, 0x2

    .line 104
    new-instance v20, Lcom/android/vcard/VCardParser_V30;

    invoke-direct/range {v20 .. v20}, Lcom/android/vcard/VCardParser_V30;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 106
    .end local v19    # "parser":Lcom/android/vcard/VCardParser;
    .local v20, "parser":Lcom/android/vcard/VCardParser;
    :try_start_6
    new-instance v11, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v11}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_6
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 107
    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    :try_start_7
    new-instance v13, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v13}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_7
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 108
    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :try_start_8
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/vcard/VCardParser_V30;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 109
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/android/vcard/VCardParser_V30;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 110
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardParser_V30;->parse(Ljava/io/InputStream;)V
    :try_end_8
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 116
    if-eqz v18, :cond_2

    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_2
    :goto_4
    move-object/from16 v19, v20

    .line 119
    .end local v20    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v19    # "parser":Lcom/android/vcard/VCardParser;
    goto :goto_1

    .line 111
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v19    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v20    # "parser":Lcom/android/vcard/VCardParser;
    :catch_1
    move-exception v17

    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .line 112
    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .local v17, "e2":Lcom/android/vcard/exception/VCardVersionException;
    :goto_5
    const/4 v2, 0x0

    .line 116
    if-eqz v18, :cond_1

    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_2

    .line 117
    :catch_2
    move-exception v3

    goto :goto_2

    .line 115
    .end local v16    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .end local v17    # "e2":Lcom/android/vcard/exception/VCardVersionException;
    .end local v20    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v19    # "parser":Lcom/android/vcard/VCardParser;
    :catchall_0
    move-exception v2

    .line 116
    :goto_6
    if-eqz v18, :cond_3

    :try_start_b
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_b .. :try_end_b} :catch_5

    .line 115
    :cond_3
    :goto_7
    :try_start_c
    throw v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_c .. :try_end_c} :catch_5

    .line 120
    .end local v18    # "is":Ljava/io/ByteArrayInputStream;
    .end local v19    # "parser":Lcom/android/vcard/VCardParser;
    :catch_3
    move-exception v15

    .line 121
    .local v15, "e":Ljava/io/IOException;
    const-string v2, "NfcImportVCardActivity"

    const-string v3, "Failed reading vcard data"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    const/4 v2, 0x0

    goto :goto_2

    .line 123
    .end local v15    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v15

    .line 124
    .local v15, "e":Lcom/android/vcard/exception/VCardNestedException;
    :goto_8
    const-string v2, "NfcImportVCardActivity"

    const-string v3, "Nested Exception is found (it may be false-positive)."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 127
    .end local v15    # "e":Lcom/android/vcard/exception/VCardNestedException;
    :catch_5
    move-exception v15

    .line 128
    .local v15, "e":Lcom/android/vcard/exception/VCardException;
    :goto_9
    const-string v2, "NfcImportVCardActivity"

    const-string v3, "Error parsing vcard"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    const/4 v2, 0x0

    goto :goto_2

    .line 117
    .end local v15    # "e":Lcom/android/vcard/exception/VCardException;
    .restart local v18    # "is":Ljava/io/ByteArrayInputStream;
    .restart local v19    # "parser":Lcom/android/vcard/VCardParser;
    :catch_6
    move-exception v3

    goto :goto_7

    .end local v19    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v16    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .restart local v20    # "parser":Lcom/android/vcard/VCardParser;
    :catch_7
    move-exception v2

    goto :goto_4

    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v16    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .end local v20    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v19    # "parser":Lcom/android/vcard/VCardParser;
    :catch_8
    move-exception v2

    goto/16 :goto_0

    .line 127
    :catch_9
    move-exception v15

    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_9

    .line 123
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :catch_a
    move-exception v15

    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_8

    .line 115
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    :catchall_1
    move-exception v2

    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_6

    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :catchall_2
    move-exception v2

    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_6

    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v19    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v16    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .restart local v20    # "parser":Lcom/android/vcard/VCardParser;
    :catchall_3
    move-exception v2

    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    move-object/from16 v19, v20

    .end local v20    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v19    # "parser":Lcom/android/vcard/VCardParser;
    goto :goto_6

    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v19    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v20    # "parser":Lcom/android/vcard/VCardParser;
    :catchall_4
    move-exception v2

    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object/from16 v19, v20

    .end local v20    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v19    # "parser":Lcom/android/vcard/VCardParser;
    goto :goto_6

    .end local v19    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v20    # "parser":Lcom/android/vcard/VCardParser;
    :catchall_5
    move-exception v2

    move-object/from16 v19, v20

    .end local v20    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v19    # "parser":Lcom/android/vcard/VCardParser;
    goto :goto_6

    .line 111
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v19    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v20    # "parser":Lcom/android/vcard/VCardParser;
    :catch_b
    move-exception v17

    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    goto :goto_5

    :catch_c
    move-exception v17

    goto :goto_5

    .line 101
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v16    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .end local v20    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v19    # "parser":Lcom/android/vcard/VCardParser;
    :catch_d
    move-exception v16

    move-object v14, v13

    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    goto/16 :goto_3

    :catch_e
    move-exception v16

    goto/16 :goto_3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 187
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 188
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 189
    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const-string v1, "account_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_set"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 193
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->startImport()V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->finish()V

    goto :goto_0
.end method

.method public onCancelRequest(Lcom/android/contacts/common/vcard/CancelRequest;I)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/CancelRequest;
    .param p2, "type"    # I

    .prologue
    .line 260
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 153
    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    const-string v1, "NfcImportVCardActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknowon intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->finish()V

    .line 183
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_1

    const-string v2, "text/x-vcard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "text/vcard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 162
    :cond_1
    const-string v0, "NfcImportVCardActivity"

    const-string v1, "Not a vcard"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->finish()V

    goto :goto_0

    .line 167
    :cond_2
    const-string v1, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Landroid/nfc/NdefMessage;

    .line 169
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mRecord:Landroid/nfc/NdefRecord;

    .line 171
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    .line 172
    invoke-virtual {v0, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 182
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->startImport()V

    goto :goto_0

    .line 175
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 176
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iput-object v0, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    goto :goto_1

    .line 178
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/vcard/SelectAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onExportFailed(Lcom/android/contacts/common/vcard/ExportRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;

    .prologue
    .line 255
    return-void
.end method

.method public onExportProcessed(Lcom/android/contacts/common/vcard/ExportRequest;I)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p2, "jobId"    # I

    .prologue
    .line 250
    return-void
.end method

.method public onImportCanceled(Lcom/android/contacts/common/vcard/ImportRequest;I)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I

    .prologue
    .line 245
    return-void
.end method

.method public onImportFailed(Lcom/android/contacts/common/vcard/ImportRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "NfcImportVCardActivity"

    const-string v1, "Late import failure -- ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    return-void
.end method

.method public onImportFinished(Lcom/android/contacts/common/vcard/ImportRequest;ILandroid/net/Uri;)V
    .locals 4
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    const-string v2, "NfcImportVCardActivity"

    const-string v3, "Late import -- ignoring"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    if-eqz p3, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p3}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 227
    .local v0, "contactUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->startActivity(Landroid/content/Intent;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->finish()V

    goto :goto_0
.end method

.method public onImportParsed(Lcom/android/contacts/common/vcard/ImportRequest;ILcom/android/vcard/VCardEntry;II)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "entry"    # Lcom/android/vcard/VCardEntry;
    .param p4, "currentCount"    # I
    .param p5, "totalCount"    # I

    .prologue
    .line 216
    return-void
.end method

.method public onImportProcessed(Lcom/android/contacts/common/vcard/ImportRequest;II)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "sequence"    # I

    .prologue
    .line 210
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 139
    check-cast p2, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v0

    .line 140
    .local v0, "service":Lcom/android/contacts/common/vcard/VCardService;
    new-instance v1, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;-><init>(Lcom/android/contacts/common/vcard/NfcImportVCardActivity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/contacts/common/vcard/VCardService;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 141
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 146
    return-void
.end method
