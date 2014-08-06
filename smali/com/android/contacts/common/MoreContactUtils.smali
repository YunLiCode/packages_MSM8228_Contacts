.class public Lcom/android/contacts/common/MoreContactUtils;
.super Ljava/lang/Object;
.source "MoreContactUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/MoreContactUtils$1;
    }
.end annotation


# static fields
.field private static final WAIT_SYMBOL_AS_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/MoreContactUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 159
    return-void
.end method

.method public static createHeaderView(Landroid/content/Context;I)Landroid/view/View;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textResourceId"    # I

    .prologue
    .line 190
    const v2, 0x7f040062

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 191
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0b008a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 192
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    return-object v1
.end method

.method public static getInvitableIntent(Lcom/android/contacts/common/model/account/AccountType;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4
    .param p0, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p1, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 203
    iget-object v2, p0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 204
    .local v2, "syncAdapterPackageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/common/model/account/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "className":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    :cond_0
    const/4 v1, 0x0

    .line 215
    :goto_0
    return-object v1

    .line 208
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v3, "com.android.contacts.action.INVITE_CONTACT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getTargetRectFromView(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 174
    .local v0, "appScale":F
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 175
    .local v1, "pos":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 177
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 178
    .local v2, "rect":Landroid/graphics/Rect;
    aget v3, v1, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 179
    aget v3, v1, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 180
    aget v3, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 181
    aget v3, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 182
    return-object v2
.end method

.method public static shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "mimetype1"    # Ljava/lang/CharSequence;
    .param p1, "data1"    # Ljava/lang/CharSequence;
    .param p2, "mimetype2"    # Ljava/lang/CharSequence;
    .param p3, "data2"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 56
    :cond_2
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 60
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/common/MoreContactUtils;->shouldCollapsePhoneNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static shouldCollapsePhoneNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "number1"    # Ljava/lang/String;
    .param p1, "number2"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 71
    sget-object v11, Lcom/android/contacts/common/MoreContactUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "dataParts1":[Ljava/lang/String;
    sget-object v11, Lcom/android/contacts/common/MoreContactUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "dataParts2":[Ljava/lang/String;
    array-length v11, v2

    array-length v12, v3

    if-eq v11, v12, :cond_1

    .line 163
    :cond_0
    :goto_0
    :pswitch_0
    return v9

    .line 74
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v8

    .line 75
    .local v8, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v11, v2

    if-ge v6, v11, :cond_4

    .line 78
    aget-object v11, v2, v6

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "dataPart1":Ljava/lang/String;
    aget-object v1, v3, v6

    .line 82
    .local v1, "dataPart2":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 75
    :cond_2
    :goto_2
    :pswitch_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 85
    :cond_3
    invoke-virtual {v8, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v7

    .line 86
    .local v7, "result":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    sget-object v11, Lcom/android/contacts/common/MoreContactUtils$1;->$SwitchMap$com$android$i18n$phonenumbers$PhoneNumberUtil$MatchType:[I

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 159
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Unknown result value from phone number library"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 98
    :pswitch_2
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v8, v0, v11}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v11

    if-ne v11, v10, :cond_0

    .line 132
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    const/16 v12, 0x31

    if-ne v11, v12, :cond_2

    goto :goto_0

    .line 138
    :catch_0
    move-exception v4

    .line 149
    .local v4, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v8, v1, v11}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_1
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 150
    :catch_1
    move-exception v5

    .line 152
    .local v5, "e2":Lcom/android/i18n/phonenumbers/NumberParseException;
    goto :goto_2

    .end local v0    # "dataPart1":Ljava/lang/String;
    .end local v1    # "dataPart2":Ljava/lang/String;
    .end local v4    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    .end local v5    # "e2":Lcom/android/i18n/phonenumbers/NumberParseException;
    .end local v7    # "result":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :cond_4
    move v9, v10

    .line 163
    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
