.class final enum Lcom/android/contacts/model/Contact$Status;
.super Ljava/lang/Enum;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/model/Contact$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/model/Contact$Status;

.field public static final enum ERROR:Lcom/android/contacts/model/Contact$Status;

.field public static final enum LOADED:Lcom/android/contacts/model/Contact$Status;

.field public static final enum NOT_FOUND:Lcom/android/contacts/model/Contact$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/android/contacts/model/Contact$Status;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/model/Contact$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/model/Contact$Status;->LOADED:Lcom/android/contacts/model/Contact$Status;

    .line 55
    new-instance v0, Lcom/android/contacts/model/Contact$Status;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/model/Contact$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/model/Contact$Status;->ERROR:Lcom/android/contacts/model/Contact$Status;

    .line 57
    new-instance v0, Lcom/android/contacts/model/Contact$Status;

    const-string v1, "NOT_FOUND"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/model/Contact$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/model/Contact$Status;->NOT_FOUND:Lcom/android/contacts/model/Contact$Status;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/contacts/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/model/Contact$Status;->LOADED:Lcom/android/contacts/model/Contact$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/model/Contact$Status;->ERROR:Lcom/android/contacts/model/Contact$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/model/Contact$Status;->NOT_FOUND:Lcom/android/contacts/model/Contact$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/model/Contact$Status;->$VALUES:[Lcom/android/contacts/model/Contact$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/model/Contact$Status;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/contacts/model/Contact$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/Contact$Status;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/model/Contact$Status;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/contacts/model/Contact$Status;->$VALUES:[Lcom/android/contacts/model/Contact$Status;

    invoke-virtual {v0}, [Lcom/android/contacts/model/Contact$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/model/Contact$Status;

    return-object v0
.end method
