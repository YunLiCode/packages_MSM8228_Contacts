.class public Lcom/android/contacts/multichoice/MultiChoiceIntentResolver;
.super Lcom/android/contacts/list/ContactsIntentResolver;
.source "MultiChoiceIntentResolver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/android/contacts/multichoice/MultiChoiceIntentResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/multichoice/MultiChoiceIntentResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    .line 41
    return-void
.end method


# virtual methods
.method public resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v11, 0x7db

    const/16 v10, 0x7d9

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 45
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    sget-object v5, Lcom/android/contacts/multichoice/MultiChoiceIntentResolver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Called with action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v2, Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {v2}, Lcom/android/contacts/list/ContactsRequest;-><init>()V

    .line 49
    .local v2, "request":Lcom/android/contacts/list/ContactsRequest;
    const-string v5, "com.android.contacts.action.MULTI_PICK_CONTACTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    const/16 v5, 0x7d0

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    .line 100
    .end local v2    # "request":Lcom/android/contacts/list/ContactsRequest;
    :goto_0
    return-object v2

    .line 51
    .restart local v2    # "request":Lcom/android/contacts/list/ContactsRequest;
    :cond_0
    const-string v5, "com.android.contacts.action.MULTI_DELETE_CONTACTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 52
    const/16 v5, 0x7d1

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    goto :goto_0

    .line 53
    :cond_1
    const-string v5, "com.android.contacts.action.MULTI_SHARE_CONTACTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 54
    const/16 v5, 0x7d2

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    goto :goto_0

    .line 55
    :cond_2
    const-string v5, "com.android.contacts.action.MULTI_PICK_PHONE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 56
    const/16 v5, 0x7d4

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    goto :goto_0

    .line 57
    :cond_3
    const-string v5, "com.android.contacts.action.MULTI_PICK_EMAIL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 58
    const/16 v5, 0x7d3

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    goto :goto_0

    .line 59
    :cond_4
    const-string v5, "com.android.contacts.action.MULTI_PICK_PHONE_AND_EMAIL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 60
    const/16 v5, 0x7d5

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    goto :goto_0

    .line 61
    :cond_5
    const-string v5, "com.android.contacts.action.MULTI_EXPORT_CONTACTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 62
    invoke-virtual {v2, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    goto :goto_0

    .line 63
    :cond_6
    const-string v5, "com.android.contacts.action.MULTI_PICK_GROUP_MEMBERS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 64
    const/16 v5, 0x7d6

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    goto :goto_0

    .line 65
    :cond_7
    const-string v5, "com.android.contacts.action.MULTI_MOV_GROUP_MEMBERS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 66
    const/16 v5, 0x7de

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    goto :goto_0

    .line 67
    :cond_8
    const-string v5, "com.android.contacts.action.MULTI_ADD_GROUP_MEMBERS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 68
    const/16 v5, 0x7d7

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    goto/16 :goto_0

    .line 69
    :cond_9
    const-string v5, "com.android.contacts.action.MULTI_DEL_GROUP_MEMBERS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 70
    const/16 v5, 0x7d8

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    goto/16 :goto_0

    .line 71
    :cond_a
    const-string v5, "com.android.contacts.action.MULTI_PICK_VCARD"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 72
    invoke-virtual {v2, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    goto/16 :goto_0

    .line 73
    :cond_b
    const-string v5, "com.android.contacts.action.MULTI_SEND_GROUP_EMAIL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 74
    const/16 v5, 0x7dd

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    goto/16 :goto_0

    .line 75
    :cond_c
    const-string v5, "com.android.contacts.action.MULTI_SEND_GROUP_SMS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 76
    const/16 v5, 0x7dc

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    goto/16 :goto_0

    .line 77
    :cond_d
    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "text/x-vcard"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 79
    invoke-virtual {v2, v11}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    goto/16 :goto_0

    .line 80
    :cond_e
    const-string v5, "com.android.contacts.action.MULTI_PICK_SIM"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 81
    const-string v5, "subscription"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 83
    .local v4, "subscription":I
    if-ne v4, v8, :cond_f

    .line 84
    invoke-virtual {v2, v9}, Lcom/android/contacts/list/ContactsRequest;->setValid(Z)V

    goto/16 :goto_0

    .line 88
    :cond_f
    new-instance v3, Landroid/accounts/Account;

    invoke-static {v4}, Lcom/android/contacts/common/util/SimContactsOperation;->getAccountNameBySub(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.sim"

    invoke-direct {v3, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .local v3, "source":Landroid/accounts/Account;
    new-instance v1, Landroid/accounts/Account;

    const-string v5, "account_name"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v1, "destination":Landroid/accounts/Account;
    const-string v5, "from_account"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 95
    const-string v5, "to_account"

    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    invoke-virtual {v2, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    goto/16 :goto_0

    .line 99
    .end local v1    # "destination":Landroid/accounts/Account;
    .end local v3    # "source":Landroid/accounts/Account;
    .end local v4    # "subscription":I
    :cond_10
    invoke-virtual {v2, v9}, Lcom/android/contacts/list/ContactsRequest;->setValid(Z)V

    goto/16 :goto_0
.end method
