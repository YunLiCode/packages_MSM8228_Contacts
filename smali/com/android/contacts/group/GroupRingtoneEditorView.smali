.class public Lcom/android/contacts/group/GroupRingtoneEditorView;
.super Landroid/widget/LinearLayout;
.source "GroupRingtoneEditorView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultText:Ljava/lang/String;

.field private mHintText:Ljava/lang/String;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mUnknownText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/contacts/group/GroupRingtoneEditorView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/group/GroupRingtoneEditorView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p1, p0, Lcom/android/contacts/group/GroupRingtoneEditorView;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-object p1, p0, Lcom/android/contacts/group/GroupRingtoneEditorView;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 65
    iget-object v1, p0, Lcom/android/contacts/group/GroupRingtoneEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/contacts/group/GroupRingtoneEditorView;->mContext:Landroid/content/Context;

    const v2, 0x7f0901ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/group/GroupRingtoneEditorView;->mHintText:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/android/contacts/group/GroupRingtoneEditorView;->mContext:Landroid/content/Context;

    const v2, 0x1040443

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/group/GroupRingtoneEditorView;->mDefaultText:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/android/contacts/group/GroupRingtoneEditorView;->mContext:Landroid/content/Context;

    const v2, 0x1040447

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/group/GroupRingtoneEditorView;->mUnknownText:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/contacts/group/GroupRingtoneEditorView;->mListener:Landroid/view/View$OnClickListener;

    .line 90
    const v0, 0x7f0b00c3

    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupRingtoneEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupRingtoneEditorView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 72
    const v1, 0x7f0b00c3

    invoke-virtual {p0, v1}, Lcom/android/contacts/group/GroupRingtoneEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 73
    .local v0, "editor":Landroid/widget/EditText;
    sget-object v1, Lcom/android/contacts/group/GroupRingtoneEditorView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStatus msg->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    packed-switch p1, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 77
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :pswitch_1
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :pswitch_2
    iget-object v1, p0, Lcom/android/contacts/group/GroupRingtoneEditorView;->mUnknownText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
