.class public final Lcom/android/contacts/common/model/account/AccountType$EditField;
.super Ljava/lang/Object;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditField"
.end annotation


# instance fields
.field public column:Ljava/lang/String;

.field private inputFilters:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/text/InputFilter;",
            ">;"
        }
    .end annotation
.end field

.field public inputType:I

.field public longForm:Z

.field public minLines:I

.field public optional:Z

.field public shortForm:Z

.field public titleRes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "titleRes"    # I

    .prologue
    .line 451
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 449
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputFilters:Ljava/util/HashSet;

    .line 452
    iput-object p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 453
    iput p2, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->titleRes:I

    .line 454
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "titleRes"    # I
    .param p3, "inputType"    # I

    .prologue
    .line 457
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;I)V

    .line 458
    iput p3, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputType:I

    .line 459
    return-void
.end method


# virtual methods
.method public addFilterForDispersedName(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 506
    const v0, 0x7f0a0003

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addLengthFilter(Landroid/content/Context;I)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v0

    return-object v0
.end method

.method public addFilterForDispersedPhoneticName(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 514
    const v0, 0x7f0a0005

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addLengthFilter(Landroid/content/Context;I)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v0

    return-object v0
.end method

.method public addFilterForDispersedPostal(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 534
    const v0, 0x7f0a000a

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addLengthFilter(Landroid/content/Context;I)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v0

    return-object v0
.end method

.method public addFilterForEmailAddress(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 522
    const v0, 0x7f0a0007

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addLengthFilter(Landroid/content/Context;I)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v0

    return-object v0
.end method

.method public addFilterForEvent(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 558
    const v0, 0x7f0a0010

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addLengthFilter(Landroid/content/Context;I)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v0

    return-object v0
.end method

.method public addFilterForIm(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 538
    const v0, 0x7f0a000b

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addLengthFilter(Landroid/content/Context;I)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v0

    return-object v0
.end method

.method public addFilterForNickName(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 526
    const v0, 0x7f0a0008

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addLengthFilter(Landroid/content/Context;I)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v0

    return-object v0
.end method

.method public addFilterForNote(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 546
    const v0, 0x7f0a000d

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addLengthFilter(Landroid/content/Context;I)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v0

    return-object v0
.end method

.method public addFilterForOrganization(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 542
    const v0, 0x7f0a000c

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addLengthFilter(Landroid/content/Context;I)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v0

    return-object v0
.end method

.method public addFilterForPhoneNumber(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 518
    const v0, 0x7f0a0006

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addLengthFilter(Landroid/content/Context;I)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v0

    return-object v0
.end method

.method public addFilterForPhoneticName(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 510
    const v0, 0x7f0a0004

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addLengthFilter(Landroid/content/Context;I)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v0

    return-object v0
.end method

.method public addFilterForRelation(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 562
    const v0, 0x7f0a0011

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addLengthFilter(Landroid/content/Context;I)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v0

    return-object v0
.end method

.method public addFilterForStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 502
    const v0, 0x7f0a0002

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addLengthFilter(Landroid/content/Context;I)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v0

    return-object v0
.end method

.method public addFilterForStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 530
    const v0, 0x7f0a0009

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addLengthFilter(Landroid/content/Context;I)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v0

    return-object v0
.end method

.method public addFilterForWebsite(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 550
    const v0, 0x7f0a000e

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addLengthFilter(Landroid/content/Context;I)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v0

    return-object v0
.end method

.method public addInputFilter(Landroid/text/InputFilter;)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 1
    .param p1, "inputFilter"    # Landroid/text/InputFilter;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 483
    return-object p0
.end method

.method public addLengthFilter(I)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 487
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addInputFilter(Landroid/text/InputFilter;)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v0

    return-object v0
.end method

.method public addLengthFilter(Landroid/content/Context;I)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 493
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditField;->addLengthFilter(I)Lcom/android/contacts/common/model/account/AccountType$EditField;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 496
    .end local p0    # "this":Lcom/android/contacts/common/model/account/AccountType$EditField;
    :goto_0
    return-object p0

    .line 494
    .restart local p0    # "this":Lcom/android/contacts/common/model/account/AccountType$EditField;
    :catch_0
    move-exception v0

    .line 495
    .local v0, "nfe":Landroid/content/res/Resources$NotFoundException;
    # getter for: Lcom/android/contacts/common/model/account/AccountType;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/model/account/AccountType;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputFilters:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    const/4 v0, 0x0

    .line 573
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputFilters:Ljava/util/HashSet;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/InputFilter;

    goto :goto_0
.end method

.method public isMultiLine()Z
    .locals 2

    .prologue
    .line 578
    iget v0, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputType:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 0
    .param p1, "longForm"    # Z

    .prologue
    .line 472
    iput-boolean p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->longForm:Z

    .line 473
    return-object p0
.end method

.method public setOptional(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 0
    .param p1, "optional"    # Z

    .prologue
    .line 462
    iput-boolean p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->optional:Z

    .line 463
    return-object p0
.end method

.method public setShortForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 0
    .param p1, "shortForm"    # Z

    .prologue
    .line 467
    iput-boolean p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->shortForm:Z

    .line 468
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " titleRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->titleRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inputType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minLines="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->minLines:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " optional="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->optional:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shortForm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->shortForm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " longForm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->longForm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
