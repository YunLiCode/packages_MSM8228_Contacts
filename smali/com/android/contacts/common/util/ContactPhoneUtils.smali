.class public Lcom/android/contacts/common/util/ContactPhoneUtils;
.super Ljava/lang/Object;
.source "ContactPhoneUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canSaveAnr(I)Z
    .locals 1
    .param p0, "subscription"    # I

    .prologue
    .line 110
    invoke-static {p0}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getAnrCount(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canSaveEmail(I)Z
    .locals 1
    .param p0, "subscription"    # I

    .prologue
    .line 117
    invoke-static {p0}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getEmailCount(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAnrCount(I)I
    .locals 6
    .param p0, "sub"    # I

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "anrCount":I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    :try_start_0
    const-string v3, "simphonebook_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v2

    .line 46
    .local v2, "iccIpb":Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-eqz v2, :cond_0

    .line 47
    invoke-interface {v2, p0}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->getSpareAnrCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result v0

    .line 69
    .end local v2    # "iccIpb":Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    :cond_0
    :goto_0
    const-string v3, "ContactPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSpareAnrCount("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return v0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "ex":Ljava/lang/SecurityException;
    const-string v3, "ContactPhoneUtils"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :cond_1
    :try_start_1
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 59
    .local v2, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    .line 60
    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getSpareAnrCount()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    goto :goto_0

    .line 64
    .end local v2    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_1
    move-exception v1

    .line 65
    .restart local v1    # "ex":Ljava/lang/SecurityException;
    const-string v3, "ContactPhoneUtils"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 66
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :catch_2
    move-exception v3

    goto :goto_0

    .line 62
    :catch_3
    move-exception v3

    goto :goto_0

    .line 53
    :catch_4
    move-exception v3

    goto :goto_0

    .line 49
    :catch_5
    move-exception v3

    goto :goto_0
.end method

.method public static getEmailCount(I)I
    .locals 6
    .param p0, "sub"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "emailCount":I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    :try_start_0
    const-string v3, "simphonebook_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v2

    .line 79
    .local v2, "iccIpb":Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-eqz v2, :cond_0

    .line 80
    invoke-interface {v2, p0}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->getSpareEmailCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result v0

    .line 102
    .end local v2    # "iccIpb":Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    :cond_0
    :goto_0
    const-string v3, "ContactPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSpareEmailCount("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "ex":Ljava/lang/SecurityException;
    const-string v3, "ContactPhoneUtils"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 90
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :cond_1
    :try_start_1
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 92
    .local v2, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    .line 93
    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getSpareEmailCount()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    goto :goto_0

    .line 97
    .end local v2    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_1
    move-exception v1

    .line 98
    .restart local v1    # "ex":Ljava/lang/SecurityException;
    const-string v3, "ContactPhoneUtils"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 99
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :catch_2
    move-exception v3

    goto :goto_0

    .line 95
    :catch_3
    move-exception v3

    goto :goto_0

    .line 86
    :catch_4
    move-exception v3

    goto :goto_0

    .line 82
    :catch_5
    move-exception v3

    goto :goto_0
.end method

.method public static getMSimTelephonyManager()Landroid/telephony/MSimTelephonyManager;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneCount()I
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getMSimTelephonyManager()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public static hasAnyEnabledIccCard()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 129
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 130
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 140
    .local v0, "i":I
    .local v1, "phoneCount":I
    :cond_0
    :goto_0
    return v2

    .end local v0    # "i":I
    .end local v1    # "phoneCount":I
    :cond_1
    move v2, v3

    .line 130
    goto :goto_0

    .line 134
    :cond_2
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getPhoneCount()I

    move-result v1

    .line 135
    .restart local v1    # "phoneCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 136
    invoke-static {v0}, Lcom/android/contacts/common/util/ContactPhoneUtils;->hasEnabledIccCard(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 140
    goto :goto_0
.end method

.method public static hasEnabledIccCard(I)Z
    .locals 4
    .param p0, "subscription"    # I

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 145
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 146
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 146
    goto :goto_0

    .line 150
    :cond_2
    if-eqz p0, :cond_3

    if-ne p0, v0, :cond_4

    :cond_3
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v2

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static isAirplaneModeOn(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 219
    const-string v1, "airplane_mode_on"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    if-nez p0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isAirplaneModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public static isSimDeactivated(I)Z
    .locals 1
    .param p0, "subscription"    # I

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method
