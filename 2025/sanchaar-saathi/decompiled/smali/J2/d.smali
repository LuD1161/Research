.class public final LJ2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT2/a;
.implements LY2/j$c;
.implements LU2/a;


# instance fields
.field public c:LY2/j;

.field public d:Landroid/content/Context;

.field public e:Landroid/app/Activity;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "InAppReviewPlugin"

    iput-object v0, p0, LJ2/d;->f:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(LJ2/d;Lv2/c;LY2/j$d;LR1/f;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, LJ2/d;->j(LJ2/d;Lv2/c;LY2/j$d;LR1/f;)V

    return-void
.end method

.method public static synthetic b(LY2/j$d;LR1/f;)V
    .locals 0

    invoke-static {p0, p1}, LJ2/d;->k(LY2/j$d;LR1/f;)V

    return-void
.end method

.method public static synthetic c(LY2/j$d;LR1/f;)V
    .locals 0

    invoke-static {p0, p1}, LJ2/d;->e(LY2/j$d;LR1/f;)V

    return-void
.end method

.method public static final e(LY2/j$d;LR1/f;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LR1/f;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic g(LJ2/d;LY2/j$d;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, LJ2/d;->f(LY2/j$d;)Z

    move-result p0

    return p0
.end method

.method public static final j(LJ2/d;Lv2/c;LY2/j$d;LR1/f;)V
    .locals 2

    const-string v0, "task"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, LR1/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJ2/d;->f:Ljava/lang/String;

    const-string v1, "onComplete: Successfully requested review flow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, LR1/f;->f()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lv2/b;

    iget-object p0, p0, LJ2/d;->e:Landroid/app/Activity;

    invoke-static {p0}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-interface {p1, p0, p3}, Lv2/c;->b(Landroid/app/Activity;Lv2/b;)LR1/f;

    move-result-object p0

    const-string p1, "launchReviewFlow(...)"

    invoke-static {p0, p1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LJ2/c;

    invoke-direct {p1, p2}, LJ2/c;-><init>(LY2/j$d;)V

    invoke-virtual {p0, p1}, LR1/f;->a(LR1/b;)LR1/f;

    goto :goto_0

    :cond_0
    iget-object p0, p0, LJ2/d;->f:Ljava/lang/String;

    const-string p1, "onComplete: Unsuccessfully requested review flow"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "In-App Review API unavailable"

    const/4 p1, 0x0

    const-string p3, "error"

    invoke-interface {p2, p3, p0, p1}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final k(LY2/j$d;LR1/f;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {p0, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final d(LY2/j$d;)V
    .locals 3

    iget-object v0, p0, LJ2/d;->f:Ljava/lang/String;

    const-string v1, "isAvailable: called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, LJ2/d;->g(LJ2/d;LY2/j$d;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, LY2/j$d;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LJ2/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-static {v0}, Lv2/d;->a(Landroid/content/Context;)Lv2/c;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lv2/c;->a()LR1/f;

    move-result-object v0

    const-string v1, "requestReviewFlow(...)"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LJ2/b;

    invoke-direct {v1, p1}, LJ2/b;-><init>(LY2/j$d;)V

    invoke-virtual {v0, v1}, LR1/f;->a(LR1/b;)LR1/f;

    move-result-object v0

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, LJ2/d;->f:Ljava/lang/String;

    const-string v2, "isAvailable: error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, LY2/j$d;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final f(LY2/j$d;)Z
    .locals 6

    iget-object v0, p0, LJ2/d;->f:Ljava/lang/String;

    const-string v1, "noContextOrActivity: called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LJ2/d;->d:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "error"

    const-string v4, "noContextOrActivity: "

    if-nez v0, :cond_1

    iget-object v0, p0, LJ2/d;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Android context not available"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-interface {p1, v3, v4, v2}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, LJ2/d;->e:Landroid/app/Activity;

    if-nez v0, :cond_3

    iget-object v0, p0, LJ2/d;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Android activity not available"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-interface {p1, v3, v4, v2}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final h(LY2/j$d;)V
    .locals 5

    iget-object v0, p0, LJ2/d;->f:Ljava/lang/String;

    const-string v1, "openStoreListing: called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, LJ2/d;->f(LY2/j$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LJ2/d;->d:Landroid/content/Context;

    invoke-static {v1}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "setData(...)"

    invoke-static {v1, v2}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, LJ2/d;->e:Landroid/app/Activity;

    invoke-static {v2}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1, v0}, LY2/j$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, LJ2/d;->f:Ljava/lang/String;

    const-string v3, "openStoreListing: error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "error"

    const-string v2, "An error occurred while opening the play store"

    invoke-interface {p1, v1, v2, v0}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final i(LY2/j$d;)V
    .locals 3

    iget-object v0, p0, LJ2/d;->f:Ljava/lang/String;

    const-string v1, "requestReview: called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, LJ2/d;->f(LY2/j$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LJ2/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-static {v0}, Lv2/d;->a(Landroid/content/Context;)Lv2/c;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lv2/c;->a()LR1/f;

    move-result-object v1

    const-string v2, "requestReviewFlow(...)"

    invoke-static {v1, v2}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LJ2/a;

    invoke-direct {v2, p0, v0, p1}, LJ2/a;-><init>(LJ2/d;Lv2/c;LY2/j$d;)V

    invoke-virtual {v1, v2}, LR1/f;->a(LR1/b;)LR1/f;

    move-result-object v0

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, LJ2/d;->f:Ljava/lang/String;

    const-string v2, "requestReview: error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "An error occurred during the request review flow"

    const/4 v1, 0x0

    const-string v2, "error"

    invoke-interface {p1, v2, v0, v1}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onAttachedToActivity(LU2/c;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LU2/c;->e()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, LJ2/d;->e:Landroid/app/Activity;

    return-void
.end method

.method public onAttachedToEngine(LT2/a$b;)V
    .locals 3

    const-string v0, "flutterPluginBinding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LY2/j;

    invoke-virtual {p1}, LT2/a$b;->b()LY2/b;

    move-result-object v1

    const-string v2, "dev.britannio.in_app_review"

    invoke-direct {v0, v1, v2}, LY2/j;-><init>(LY2/b;Ljava/lang/String;)V

    iput-object v0, p0, LJ2/d;->c:LY2/j;

    invoke-virtual {v0, p0}, LY2/j;->e(LY2/j$c;)V

    invoke-virtual {p1}, LT2/a$b;->a()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LJ2/d;->d:Landroid/content/Context;

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LJ2/d;->e:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LJ2/d;->e:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromEngine(LT2/a$b;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LJ2/d;->c:LY2/j;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "channel"

    invoke-static {p1}, Lv3/l;->n(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1, v0}, LY2/j;->e(LY2/j$c;)V

    iput-object v0, p0, LJ2/d;->d:Landroid/content/Context;

    return-void
.end method

.method public onMethodCall(LY2/i;LY2/j$d;)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LJ2/d;->f:Ljava/lang/String;

    iget-object v1, p1, LY2/i;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMethodCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, LY2/i;->a:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x97e25cd

    if-eq v0, v1, :cond_4

    const v1, 0x1a7eccbf

    if-eq v0, v1, :cond_2

    const v1, 0x51206ec7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "requestReview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, LJ2/d;->i(LY2/j$d;)V

    goto :goto_1

    :cond_2
    const-string v0, "isAvailable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, LJ2/d;->d(LY2/j$d;)V

    goto :goto_1

    :cond_4
    const-string v0, "openStoreListing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p2}, LJ2/d;->h(LY2/j$d;)V

    goto :goto_1

    :cond_6
    :goto_0
    invoke-interface {p2}, LY2/j$d;->c()V

    :goto_1
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(LU2/c;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LU2/c;->e()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, LJ2/d;->e:Landroid/app/Activity;

    return-void
.end method
