.class public Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;
.super Ljava/lang/Object;
.source "PhoneNumberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/PhoneNumberListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PhoneQuery"
.end annotation


# static fields
.field private static final PROJECTION_ALTERNATIVE:[Ljava/lang/String;

.field private static final PROJECTION_PRIMARY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const-string v1, "contact_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    .line 77
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const-string v1, "contact_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-object v0
.end method
