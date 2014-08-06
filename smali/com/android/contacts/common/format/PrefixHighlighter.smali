.class public Lcom/android/contacts/common/format/PrefixHighlighter;
.super Ljava/lang/Object;
.source "PrefixHighlighter.java"


# instance fields
.field private mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private final mPrefixHighlightColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "prefixHighlightColor"    # I

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/android/contacts/common/format/PrefixHighlighter;->mPrefixHighlightColor:I

    .line 33
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 53
    if-nez p2, :cond_1

    .line 75
    .end local p1    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 58
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, 0x0

    .line 59
    .local v1, "prefixStart":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "trimmedPrefix":Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/contacts/common/format/FormatUtils;->indexOfWordPrefix(Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result v0

    .line 66
    .local v0, "index":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 67
    iget-object v4, p0, Lcom/android/contacts/common/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    if-nez v4, :cond_3

    .line 68
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lcom/android/contacts/common/format/PrefixHighlighter;->mPrefixHighlightColor:I

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v4, p0, Lcom/android/contacts/common/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 71
    :cond_3
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 72
    .local v2, "result":Landroid/text/SpannableString;
    iget-object v4, p0, Lcom/android/contacts/common/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v0, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v2

    .line 73
    goto :goto_0
.end method

.method public setText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/format/PrefixHighlighter;->apply(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method
