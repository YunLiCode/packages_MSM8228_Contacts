.class Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;
.super Landroid/os/AsyncTask;
.source "AccountCapacityLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/AccountCapacityLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "USIMCapacityLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mSubscription:I

.field final synthetic this$0:Lcom/android/contacts/common/list/AccountCapacityLoader;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/list/AccountCapacityLoader;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;->this$0:Lcom/android/contacts/common/list/AccountCapacityLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 179
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/list/AccountCapacityLoader;Landroid/content/Context;Lcom/android/contacts/common/list/AccountCapacityLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/common/list/AccountCapacityLoader;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/contacts/common/list/AccountCapacityLoader$1;

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;-><init>(Lcom/android/contacts/common/list/AccountCapacityLoader;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 184
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;->mSubscription:I

    .line 185
    # getter for: Lcom/android/contacts/common/list/AccountCapacityLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/list/AccountCapacityLoader;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load card capacity on sub: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget v0, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;->mSubscription:I

    invoke-static {v0}, Lcom/android/contacts/common/list/AccountCapacityLoader;->getUSIMCapacity(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 173
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget v1, p0, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;->mSubscription:I

    # invokes: Lcom/android/contacts/common/list/AccountCapacityLoader;->getSpecifiedKey(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/common/list/AccountCapacityLoader;->access$300(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 173
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/AccountCapacityLoader$USIMCapacityLoader;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
