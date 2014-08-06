.class Lcom/android/contacts/common/model/account/SimAccountType$SimNameInputFilter;
.super Ljava/lang/Object;
.source "SimAccountType.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/SimAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimNameInputFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/model/account/SimAccountType$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/common/model/account/SimAccountType$1;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/SimAccountType$SimNameInputFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 160
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "total":Ljava/lang/String;
    const/16 v1, 0xe

    .line 162
    .local v1, "restraintLength":I
    invoke-static {v2}, Lcom/android/contacts/common/util/SimContactsOperation;->hasChinese(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    const/4 v1, 0x6

    .line 166
    :cond_0
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    sub-int v0, v1, v3

    .line 168
    .local v0, "keep":I
    if-gtz v0, :cond_1

    .line 169
    const-string v3, ""

    .line 180
    :goto_0
    return-object v3

    .line 170
    :cond_1
    sub-int v3, p3, p2

    if-lt v0, v3, :cond_2

    .line 171
    const/4 v3, 0x0

    goto :goto_0

    .line 173
    :cond_2
    add-int/2addr v0, p2

    .line 174
    add-int/lit8 v3, v0, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 175
    add-int/lit8 v0, v0, -0x1

    .line 176
    if-ne v0, p2, :cond_3

    .line 177
    const-string v3, ""

    goto :goto_0

    .line 180
    :cond_3
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0
.end method
