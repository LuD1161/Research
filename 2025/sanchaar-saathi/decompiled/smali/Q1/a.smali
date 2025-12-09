.class public LQ1/a;
.super Lz1/h;
.source "SourceFile"

# interfaces
.implements LP1/e;


# static fields
.field public static final synthetic O:I


# instance fields
.field public final K:Z

.field public final L:Lz1/e;

.field public final M:Landroid/os/Bundle;

.field public final N:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLz1/e;Landroid/os/Bundle;Lv1/f$a;Lv1/f$b;)V
    .locals 7

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lz1/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILz1/e;Lv1/f$a;Lv1/f$b;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LQ1/a;->K:Z

    iput-object p4, p0, LQ1/a;->L:Lz1/e;

    iput-object p5, p0, LQ1/a;->M:Landroid/os/Bundle;

    invoke-virtual {p4}, Lz1/e;->h()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LQ1/a;->N:Ljava/lang/Integer;

    return-void
.end method

.method public static l0(Lz1/e;)Landroid/os/Bundle;
    .locals 4

    invoke-virtual {p0}, Lz1/e;->g()LP1/a;

    invoke-virtual {p0}, Lz1/e;->h()Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.google.android.gms.signin.internal.clientRequestedAccount"

    invoke-virtual {p0}, Lz1/e;->a()Landroid/accounts/Account;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v0, :cond_0

    const-string p0, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p0, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string p0, "com.google.android.gms.signin.internal.offlineAccessRequested"

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v1, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.serverClientId"

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    invoke-virtual {v1, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.hostedDomain"

    invoke-virtual {v1, p0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.google.android.gms.signin.internal.logSessionId"

    invoke-virtual {v1, p0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    invoke-virtual {v1, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method


# virtual methods
.method public final D()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method public final d(LQ1/f;)V
    .locals 7

    const-string v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p1, v0}, Lz1/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, LQ1/a;->L:Lz1/e;

    invoke-virtual {v2}, Lz1/e;->b()Landroid/accounts/Account;

    move-result-object v2

    const-string v3, "<<default account>>"

    iget-object v4, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lz1/d;->x()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lr1/a;->a(Landroid/content/Context;)Lr1/a;

    move-result-object v3

    invoke-virtual {v3}, Lr1/a;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    move-object v3, v1

    :goto_0
    new-instance v4, Lz1/E;

    iget-object v5, p0, LQ1/a;->N:Ljava/lang/Integer;

    invoke-static {v5}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v2, v5, v3}, Lz1/E;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {p0}, Lz1/d;->C()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, LQ1/g;

    new-instance v3, LQ1/j;

    invoke-direct {v3, v0, v4}, LQ1/j;-><init>(ILz1/E;)V

    invoke-virtual {v2, v3, p1}, LQ1/g;->K(LQ1/j;LQ1/f;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-string v3, "Remote service probably died when signIn is called"

    const-string v4, "SignInClientImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v3, LQ1/l;

    new-instance v5, Lu1/a;

    const/16 v6, 0x8

    invoke-direct {v5, v6, v1}, Lu1/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {v3, v0, v5, v1}, LQ1/l;-><init>(ILu1/a;Lz1/G;)V

    invoke-interface {p1, v3}, LQ1/f;->w(LQ1/l;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    const-string p1, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v4, p1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final g()V
    .locals 1

    new-instance v0, Lz1/d$d;

    invoke-direct {v0, p0}, Lz1/d$d;-><init>(Lz1/d;)V

    invoke-virtual {p0, v0}, Lz1/d;->a(Lz1/d$c;)V

    return-void
.end method

.method public final i()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, LQ1/a;->K:Z

    return v0
.end method

.method public final synthetic r(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, LQ1/g;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, LQ1/g;

    goto :goto_0

    :cond_1
    new-instance v0, LQ1/g;

    invoke-direct {v0, p1}, LQ1/g;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final z()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, LQ1/a;->L:Lz1/e;

    invoke-virtual {v0}, Lz1/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lz1/d;->x()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LQ1/a;->M:Landroid/os/Bundle;

    invoke-virtual {v0}, Lz1/e;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.google.android.gms.signin.internal.realClientPackageName"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, LQ1/a;->M:Landroid/os/Bundle;

    return-object v0
.end method
