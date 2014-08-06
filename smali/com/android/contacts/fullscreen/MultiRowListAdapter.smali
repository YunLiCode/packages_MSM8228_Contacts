.class public Lcom/android/contacts/fullscreen/MultiRowListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultiRowListAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;,
        Lcom/android/contacts/fullscreen/MultiRowListAdapter$ActionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final UNKNOWN_NAME:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/fullscreen/MultiRowLineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/contacts/fullscreen/MultiRowListAdapter$ActionCallback;

.field private mLoader:Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;

.field private mRealSectionCounts:[I

.field private mSectionCounts:[I

.field private mSectionTitles:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mInfoList:Ljava/util/ArrayList;

    .line 52
    const v0, 0x7f0900e6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->UNKNOWN_NAME:Ljava/lang/String;

    .line 53
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)Lcom/android/contacts/fullscreen/MultiRowListAdapter$ActionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mListener:Lcom/android/contacts/fullscreen/MultiRowListAdapter$ActionCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionTitles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/fullscreen/MultiRowListAdapter;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/fullscreen/MultiRowListAdapter;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionTitles:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mRealSectionCounts:[I

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/fullscreen/MultiRowListAdapter;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/fullscreen/MultiRowListAdapter;
    .param p1, "x1"    # [I

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mRealSectionCounts:[I

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionCounts:[I

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/contacts/fullscreen/MultiRowListAdapter;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/fullscreen/MultiRowListAdapter;
    .param p1, "x1"    # [I

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionCounts:[I

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->isAirPlaneMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/contacts/fullscreen/MultiRowListAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/fullscreen/MultiRowListAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->UNKNOWN_NAME:Ljava/lang/String;

    return-object v0
.end method

.method private isAirPlaneMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 292
    iget-object v2, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 255
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 5
    .param p1, "section"    # I

    .prologue
    .line 265
    sget-object v2, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPositionForSection("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, "position":I
    iget-object v2, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionCounts:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionCounts:[I

    array-length v2, v2

    if-ge p1, v2, :cond_1

    .line 268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 269
    iget-object v2, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionCounts:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_0
    sget-object v2, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionTitles:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public getSectionForPosition(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 278
    iget-object v3, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionCounts:[I

    if-eqz v3, :cond_1

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "countSum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionCounts:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 281
    iget-object v3, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionCounts:[I

    aget v3, v3, v1

    add-int v2, v0, v3

    .line 282
    .local v2, "tempSum":I
    if-lt p1, v0, :cond_0

    if-ge p1, v2, :cond_0

    .line 288
    .end local v0    # "countSum":I
    .end local v1    # "i":I
    .end local v2    # "tempSum":I
    :goto_1
    return v1

    .line 285
    .restart local v0    # "countSum":I
    .restart local v1    # "i":I
    .restart local v2    # "tempSum":I
    :cond_0
    move v0, v2

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v0    # "countSum":I
    .end local v1    # "i":I
    .end local v2    # "tempSum":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mSectionTitles:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 82
    if-nez p2, :cond_0

    .line 83
    iget-object v7, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040044

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 86
    :cond_0
    const v7, 0x7f0b00aa

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    .local v1, "headerView":Landroid/widget/TextView;
    const v7, 0x7f0b00ab

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 88
    .local v6, "underLine":Landroid/view/View;
    const v7, 0x7f0b00ac

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 90
    .local v5, "textContainer":Landroid/view/ViewGroup;
    iget-object v7, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/fullscreen/MultiRowLineInfo;

    .line 91
    .local v2, "holder":Lcom/android/contacts/fullscreen/MultiRowLineInfo;
    invoke-virtual {v2}, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->getSectionHeader()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    .line 92
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v7, 0x3

    if-ge v3, v7, :cond_4

    .line 101
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 102
    .local v4, "nameView":Landroid/widget/Button;
    invoke-virtual {v2, v3}, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->getContactId(I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    .line 103
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setClickable(Z)V

    .line 105
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 100
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 95
    .end local v3    # "i":I
    .end local v4    # "nameView":Landroid/widget/Button;
    :cond_2
    invoke-virtual {v2}, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->getSectionHeader()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 107
    .restart local v3    # "i":I
    .restart local v4    # "nameView":Landroid/widget/Button;
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setClickable(Z)V

    .line 109
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 110
    invoke-virtual {v2, v3}, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->getDisplayName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v7, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mListener:Lcom/android/contacts/fullscreen/MultiRowListAdapter$ActionCallback;

    if-eqz v7, :cond_1

    .line 113
    invoke-virtual {v2, v3}, Lcom/android/contacts/fullscreen/MultiRowLineInfo;->getContactLookupUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 114
    .local v0, "ContactLookupUri":Landroid/net/Uri;
    new-instance v7, Lcom/android/contacts/fullscreen/MultiRowListAdapter$1;

    invoke-direct {v7, p0, v0}, Lcom/android/contacts/fullscreen/MultiRowListAdapter$1;-><init>(Lcom/android/contacts/fullscreen/MultiRowListAdapter;Landroid/net/Uri;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 125
    .end local v0    # "ContactLookupUri":Landroid/net/Uri;
    .end local v4    # "nameView":Landroid/widget/Button;
    :cond_4
    return-object p2
.end method

.method public setActionCallback(Lcom/android/contacts/fullscreen/MultiRowListAdapter$ActionCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/contacts/fullscreen/MultiRowListAdapter$ActionCallback;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mListener:Lcom/android/contacts/fullscreen/MultiRowListAdapter$ActionCallback;

    .line 65
    return-void
.end method

.method public startQuery()V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->stopQuery()V

    .line 69
    new-instance v0, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;-><init>(Lcom/android/contacts/fullscreen/MultiRowListAdapter;Lcom/android/contacts/fullscreen/MultiRowListAdapter$1;)V

    iput-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mLoader:Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;

    .line 70
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mLoader:Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    return-void
.end method

.method public stopQuery()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mLoader:Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mLoader:Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;->cancel(Z)Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/fullscreen/MultiRowListAdapter;->mLoader:Lcom/android/contacts/fullscreen/MultiRowListAdapter$ContactsLoader;

    .line 78
    :cond_0
    return-void
.end method
