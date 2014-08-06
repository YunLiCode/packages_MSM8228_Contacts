.class public Lcom/android/contacts/activities/AttachPhotoActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "AttachPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/AttachPhotoActivity$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mPhotoDim:I


# instance fields
.field private mContactUri:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mTempPhotoFile:Ljava/io/File;

.field private mTempPhotoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/android/contacts/activities/AttachPhotoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/AttachPhotoActivity;Lcom/android/contacts/model/Contact;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/AttachPhotoActivity;
    .param p1, "x1"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/AttachPhotoActivity;->saveContact(Lcom/android/contacts/model/Contact;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private loadContact(Landroid/net/Uri;Lcom/android/contacts/activities/AttachPhotoActivity$Listener;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "listener"    # Lcom/android/contacts/activities/AttachPhotoActivity$Listener;

    .prologue
    .line 151
    new-instance v0, Lcom/android/contacts/model/ContactLoader;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/contacts/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 152
    .local v0, "loader":Lcom/android/contacts/model/ContactLoader;
    const/4 v1, 0x0

    new-instance v2, Lcom/android/contacts/activities/AttachPhotoActivity$2;

    invoke-direct {v2, p0, p2}, Lcom/android/contacts/activities/AttachPhotoActivity$2;-><init>(Lcom/android/contacts/activities/AttachPhotoActivity;Lcom/android/contacts/activities/AttachPhotoActivity$Listener;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/ContactLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 165
    invoke-virtual {v0}, Lcom/android/contacts/model/ContactLoader;->startLoading()V

    .line 166
    return-void
.end method

.method private saveContact(Lcom/android/contacts/model/Contact;)V
    .locals 20
    .param p1, "contact"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 180
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 181
    :cond_0
    sget-object v2, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    const-string v4, "contact is null."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const v2, 0x7f09012d

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->finish()V

    .line 231
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->createRawContactDeltaList()Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v3

    .line 188
    .local v3, "deltaList":Lcom/android/contacts/model/RawContactDeltaList;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/contacts/model/RawContactDeltaList;->getFirstWritableRawContact(Landroid/content/Context;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v16

    .line 189
    .local v16, "raw":Lcom/android/contacts/model/RawContactDelta;
    if-nez v16, :cond_2

    .line 190
    sget-object v2, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    const-string v4, "no writable raw-contact found"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const v2, 0x7f090158

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->finish()V

    goto :goto_0

    .line 197
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/ContactsUtils;->getThumbnailSize(Landroid/content/Context;)I

    move-result v18

    .line 198
    .local v18, "size":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 199
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    move/from16 v0, v18

    move/from16 v1, v18

    invoke-static {v13, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 200
    .local v17, "scaled":Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/android/contacts/util/ContactPhotoUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v14

    .line 201
    .local v14, "compressed":[B
    if-nez v14, :cond_3

    .line 202
    sget-object v2, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    const-string v4, "could not create scaled and compressed Bitmap"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_3
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v12

    .line 211
    .local v12, "account":Lcom/android/contacts/common/model/account/AccountType;
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v16

    invoke-static {v0, v12, v2}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v19

    .line 213
    .local v19, "values":Lcom/android/contacts/common/model/ValuesDelta;
    if-nez v19, :cond_4

    .line 214
    sget-object v2, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    const-string v4, "cannot attach photo to this account type"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/model/ValuesDelta;->setPhoto([B)V

    .line 220
    sget-object v2, Lcom/android/contacts/activities/AttachPhotoActivity;->TAG:Ljava/lang/String;

    const-string v4, "all prerequisites met, about to save photo to contact"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v11}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    .line 229
    .local v15, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/contacts/activities/AttachPhotoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->finish()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "result"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x2

    .line 117
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->finish()V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 126
    .local v1, "myIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "mimeType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 128
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "mimeType"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    sget v3, Lcom/android/contacts/activities/AttachPhotoActivity;->mPhotoDim:I

    invoke-static {v0, v2, v3}, Lcom/android/contacts/util/ContactPhotoUtils;->addGalleryIntentExtras(Landroid/content/Intent;Landroid/net/Uri;I)V

    .line 132
    invoke-virtual {p0, v0, v4}, Lcom/android/contacts/activities/AttachPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    goto :goto_0

    .line 136
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "myIntent":Landroid/content/Intent;
    :cond_3
    if-ne p1, v4, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    new-instance v3, Lcom/android/contacts/activities/AttachPhotoActivity$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/AttachPhotoActivity$1;-><init>(Lcom/android/contacts/activities/AttachPhotoActivity;)V

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/activities/AttachPhotoActivity;->loadContact(Landroid/net/Uri;Lcom/android/contacts/activities/AttachPhotoActivity$Listener;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    if-eqz p1, :cond_2

    .line 79
    const-string v0, "contact_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "uri":Ljava/lang/String;
    if-nez v8, :cond_1

    move-object v0, v3

    :goto_0
    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    .line 82
    const-string v0, "temp_photo_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    .line 83
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoFile:Ljava/io/File;

    .line 93
    .end local v8    # "uri":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 96
    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 99
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 100
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/contacts/activities/AttachPhotoActivity;->mPhotoDim:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    if-eqz v6, :cond_0

    .line 103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_0
    return-void

    .line 80
    .end local v6    # "c":Landroid/database/Cursor;
    .restart local v8    # "uri":Ljava/lang/String;
    :cond_1
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 85
    .end local v8    # "uri":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempPhotoFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoFile:Ljava/io/File;

    .line 86
    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    .line 88
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "vnd.android.cursor.dir/contact"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v7, v2}, Lcom/android/contacts/activities/AttachPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 102
    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_3
    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const-string v0, "contact_uri"

    iget-object v1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    const-string v0, "temp_photo_uri"

    iget-object v1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mTempPhotoUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method
