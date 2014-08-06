.class public Lcom/android/contacts/detail/ContactLoaderFragment;
.super Landroid/app/Fragment;
.source "ContactLoaderFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContactData:Lcom/android/contacts/model/Contact;

.field private mContext:Landroid/content/Context;

.field private mCustomRingtone:Ljava/lang/String;

.field private final mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

.field private mLookupUri:Landroid/net/Uri;

.field private mOptionsMenuCanCreateShortcut:Z

.field private mOptionsMenuEditable:Z

.field private mOptionsMenuOptions:Z

.field private mOptionsMenuShareable:Z

.field private mSendToVoicemailState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 191
    new-instance v0, Lcom/android/contacts/detail/ContactLoaderFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactLoaderFragment$1;-><init>(Lcom/android/contacts/detail/ContactLoaderFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/model/Contact;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/detail/ContactLoaderFragment;Lcom/android/contacts/model/Contact;)Lcom/android/contacts/model/Contact;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;
    .param p1, "x1"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactLoaderFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    return-object v0
.end method

.method private createLauncherShortcutWithContact()V
    .locals 3

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 377
    .local v1, "parentActivity":Landroid/app/Activity;
    new-instance v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    new-instance v2, Lcom/android/contacts/detail/ContactLoaderFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment$2;-><init>(Lcom/android/contacts/detail/ContactLoaderFragment;Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 393
    .local v0, "builder":Lcom/android/contacts/common/list/ShortcutIntentBuilder;
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    .line 394
    return-void
.end method

.method private doPickRingtone()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 496
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 500
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 505
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 506
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 513
    .local v1, "ringtoneUri":Landroid/net/Uri;
    :goto_0
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 516
    invoke-virtual {p0, v0, v3}, Lcom/android/contacts/detail/ContactLoaderFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 517
    return-void

    .line 509
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    :cond_0
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "ringtoneUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method private getPreAuthorizedUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 400
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 401
    .local v1, "uriBundle":Landroid/os/Bundle;
    const-string v2, "uri_to_authorize"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 402
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "authorize"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 407
    .local v0, "authResponse":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 408
    const-string v2, "authorized_uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 411
    :goto_0
    return-object v2

    :cond_0
    move-object v2, p1

    goto :goto_0
.end method

.method private handleRingtonePicked(Landroid/net/Uri;)V
    .locals 5

    .prologue
    .line 535
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    .line 540
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    const-class v3, Lcom/android/contacts/activities/ContactDetailActivity;

    const-string v4, "com.android.contacts.RINGTONE_CHANGED"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/contacts/ContactSaveService;->createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 544
    return-void

    .line 538
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    goto :goto_0
.end method

.method private sendContactViaSMS()V
    .locals 24

    .prologue
    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    .line 429
    .local v10, "name":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v15, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v3, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v17, "postalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v13, "organizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v20, "sipAddressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v21, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Contact name: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/model/RawContact;

    .line 438
    .local v18, "raw":Lcom/android/contacts/model/RawContact;
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 439
    .local v4, "entValues":Landroid/content/ContentValues;
    sget-object v21, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "  entValues:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/model/RawContact;->getNamedDataItems()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/model/RawContact$NamedDataItem;

    .line 442
    .local v11, "namedDataItem":Lcom/android/contacts/model/RawContact$NamedDataItem;
    iget-object v5, v11, Lcom/android/contacts/model/RawContact$NamedDataItem;->mContentValues:Landroid/content/ContentValues;

    .line 443
    .local v5, "entryValues":Landroid/content/ContentValues;
    const-string v21, "mimetype"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 445
    .local v9, "mimeType":Ljava/lang/String;
    sget-object v21, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "    entryValues:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    if-eqz v9, :cond_1

    .line 449
    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 450
    const-string v21, "data1"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 451
    .local v14, "phone":Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 452
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 454
    .end local v14    # "phone":Ljava/lang/String;
    :cond_2
    const-string v21, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 455
    const-string v21, "data1"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, "email":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 457
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 459
    .end local v2    # "email":Ljava/lang/String;
    :cond_3
    const-string v21, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 460
    const-string v21, "data1"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 461
    .local v16, "postal":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 462
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 464
    .end local v16    # "postal":Ljava/lang/String;
    :cond_4
    const-string v21, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 465
    const-string v21, "data1"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 466
    .local v12, "organization":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 467
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 469
    .end local v12    # "organization":Ljava/lang/String;
    :cond_5
    const-string v21, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 470
    const-string v21, "data1"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 471
    .local v19, "sipAddress":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 472
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 479
    .end local v4    # "entValues":Landroid/content/ContentValues;
    .end local v5    # "entryValues":Landroid/content/ContentValues;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v11    # "namedDataItem":Lcom/android/contacts/model/RawContact$NamedDataItem;
    .end local v18    # "raw":Lcom/android/contacts/model/RawContact;
    .end local v19    # "sipAddress":Ljava/lang/String;
    :cond_6
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090040

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 482
    :cond_7
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const v22, 0x7f090047

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\r\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 483
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_8

    const-string v14, ""

    .line 484
    .restart local v14    # "phone":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_9

    const-string v2, ""

    .line 485
    .restart local v2    # "email":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_a

    const-string v16, ""

    .line 486
    .restart local v16    # "postal":Ljava/lang/String;
    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_b

    const-string v12, ""

    .line 487
    .restart local v12    # "organization":Ljava/lang/String;
    :goto_4
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_c

    const-string v19, ""

    .line 488
    .restart local v19    # "sipAddress":Ljava/lang/String;
    :goto_5
    new-instance v8, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v8, "intent":Landroid/content/Intent;
    const-string v21, "sms_body"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v21, "vnd.android-dir/mms-sms"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 492
    return-void

    .line 483
    .end local v2    # "email":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v12    # "organization":Ljava/lang/String;
    .end local v14    # "phone":Ljava/lang/String;
    .end local v16    # "postal":Ljava/lang/String;
    .end local v19    # "sipAddress":Ljava/lang/String;
    :cond_8
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const v22, 0x7f090053

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\r\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 484
    .restart local v14    # "phone":Ljava/lang/String;
    :cond_9
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const v22, 0x7f090054

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\r\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 485
    .restart local v2    # "email":Ljava/lang/String;
    :cond_a
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const v22, 0x7f090055

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\r\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3

    .line 486
    .restart local v16    # "postal":Ljava/lang/String;
    :cond_b
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const v22, 0x7f090057

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\r\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4

    .line 487
    .restart local v12    # "organization":Ljava/lang/String;
    :cond_c
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const v22, 0x7f09005f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\r\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_5
.end method


# virtual methods
.method public handleKeyDown(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 417
    packed-switch p1, :pswitch_data_0

    .line 423
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 419
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDeleteRequested(Landroid/net/Uri;)V

    .line 420
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public isContactCanCreateShortcut()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactEditable()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactOptionsChangeEnabled()Z
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/Contact;->isSimAccountType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactShareable()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuChanged()Z
    .locals 2

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactOptionsChangeEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactEditable()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactShareable()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuCanCreateShortcut:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactCanCreateShortcut()Z

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadUri(Landroid/net/Uri;Z)V
    .locals 4
    .param p1, "lookupUri"    # Landroid/net/Uri;
    .param p2, "forced"    # Z

    .prologue
    const/4 v3, 0x1

    .line 165
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    .line 171
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 172
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    .line 174
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-interface {v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/model/Contact;)V

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 157
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 162
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 521
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 532
    :goto_0
    return-void

    .line 525
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 527
    :pswitch_0
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 528
    .local v0, "pickedUri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 141
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    if-eqz p1, :cond_0

    .line 128
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    .line 130
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 236
    const v0, 0x7f100008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 237
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->setHasOptionsMenu(Z)V

    .line 150
    const v0, 0x7f040011

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 305
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_0
    move v7, v6

    .line 366
    :cond_1
    :goto_1
    return v7

    .line 307
    :sswitch_0
    iget-object v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v7, v8}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onEditRequested(Landroid/net/Uri;)V

    goto :goto_0

    .line 311
    :sswitch_1
    iget-object v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v6, v8}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDeleteRequested(Landroid/net/Uri;)V

    goto :goto_1

    .line 315
    :sswitch_2
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-nez v8, :cond_2

    move v7, v6

    goto :goto_1

    .line 316
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->doPickRingtone()V

    goto :goto_1

    .line 320
    :sswitch_3
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-nez v8, :cond_3

    move v7, v6

    goto :goto_1

    .line 321
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->sendContactViaSMS()V

    goto :goto_1

    .line 325
    :sswitch_4
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-nez v8, :cond_4

    move v7, v6

    goto :goto_1

    .line 327
    :cond_4
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v8}, Lcom/android/contacts/model/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, "lookupKey":Ljava/lang/String;
    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v8, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 329
    .local v5, "shareUri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v8}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 333
    invoke-direct {p0, v5}, Lcom/android/contacts/detail/ContactLoaderFragment;->getPreAuthorizedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 336
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "text/x-vcard"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 341
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    const v9, 0x7f09014d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 342
    .local v1, "chooseTitle":Ljava/lang/CharSequence;
    invoke-static {v3, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 345
    .local v0, "chooseIntent":Landroid/content/Intent;
    :try_start_0
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 346
    :catch_0
    move-exception v2

    .line 347
    .local v2, "ex":Landroid/content/ActivityNotFoundException;
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    const v9, 0x7f0900c9

    invoke-static {v8, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 353
    .end local v0    # "chooseIntent":Landroid/content/Intent;
    .end local v1    # "chooseTitle":Ljava/lang/CharSequence;
    .end local v2    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "lookupKey":Ljava/lang/String;
    .end local v5    # "shareUri":Landroid/net/Uri;
    :sswitch_5
    iget-boolean v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    if-nez v8, :cond_6

    move v6, v7

    :cond_6
    iput-boolean v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    .line 354
    iget-boolean v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 355
    iget-object v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    iget-boolean v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-static {v6, v8, v9}, Lcom/android/contacts/ContactSaveService;->createSetSendToVoicemail(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v3

    .line 357
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 362
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_6
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->createLauncherShortcutWithContact()V

    goto/16 :goto_1

    .line 305
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0127 -> :sswitch_1
        0x7f0b013a -> :sswitch_0
        0x7f0b013b -> :sswitch_4
        0x7f0b013c -> :sswitch_2
        0x7f0b013d -> :sswitch_3
        0x7f0b013e -> :sswitch_5
        0x7f0b013f -> :sswitch_6
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v8, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactOptionsChangeEnabled()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    .line 249
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactEditable()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    .line 250
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactShareable()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    .line 251
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactCanCreateShortcut()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuCanCreateShortcut:Z

    .line 252
    iget-object v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v7, :cond_0

    .line 253
    iget-object v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v7}, Lcom/android/contacts/model/Contact;->isSendToVoicemail()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    .line 254
    iget-object v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v7}, Lcom/android/contacts/model/Contact;->getCustomRingtone()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    .line 259
    :cond_0
    const v7, 0x7f0b013e

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 260
    .local v5, "optionsSendToVoicemail":Landroid/view/MenuItem;
    if-eqz v5, :cond_1

    .line 261
    iget-object v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f08000c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 262
    .local v0, "configShowSTV":Z
    iget-boolean v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 263
    if-eqz v0, :cond_3

    iget-boolean v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_0
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 265
    .end local v0    # "configShowSTV":Z
    :cond_1
    const v7, 0x7f0b013c

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 266
    .local v4, "optionsRingtone":Landroid/view/MenuItem;
    if-eqz v4, :cond_2

    .line 267
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 270
    :cond_2
    const v7, 0x7f0b013a

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 271
    .local v3, "editMenu":Landroid/view/MenuItem;
    iget-boolean v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 273
    const v7, 0x7f0b0127

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 274
    .local v2, "deleteMenu":Landroid/view/MenuItem;
    iget-boolean v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 276
    const v7, 0x7f0b013b

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 277
    .local v6, "shareMenu":Landroid/view/MenuItem;
    iget-boolean v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 279
    const v7, 0x7f0b013f

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 280
    .local v1, "createContactShortcutMenu":Landroid/view/MenuItem;
    iget-boolean v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuCanCreateShortcut:Z

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 281
    return-void

    .end local v1    # "createContactShortcutMenu":Landroid/view/MenuItem;
    .end local v2    # "deleteMenu":Landroid/view/MenuItem;
    .end local v3    # "editMenu":Landroid/view/MenuItem;
    .end local v4    # "optionsRingtone":Landroid/view/MenuItem;
    .end local v6    # "shareMenu":Landroid/view/MenuItem;
    .restart local v0    # "configShowSTV":Z
    :cond_3
    move v7, v8

    .line 263
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 135
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    return-void
.end method

.method public setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V
    .locals 0
    .param p1, "value"    # Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    .line 186
    return-void
.end method
