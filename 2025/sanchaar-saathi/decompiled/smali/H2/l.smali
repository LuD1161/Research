.class public final LH2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT2/a;
.implements LY2/j$c;
.implements LY2/l;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements LU2/a;
.implements LY2/c$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LH2/l$a;
    }
.end annotation


# static fields
.field public static final l:LH2/l$a;


# instance fields
.field public c:LY2/j;

.field public d:LY2/c;

.field public e:Ls2/b;

.field public f:LY2/c$b;

.field public g:LH2/a;

.field public h:LY2/j$d;

.field public i:Ljava/lang/Integer;

.field public j:Lp2/a;

.field public k:Lp2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LH2/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LH2/l$a;-><init>(Lv3/g;)V

    sput-object v0, LH2/l;->l:LH2/l$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final A(LH2/l;LY2/j$d;)Lh3/n;
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, LH2/l;->i:Ljava/lang/Integer;

    iput-object p1, p0, LH2/l;->h:LY2/j$d;

    iget-object p1, p0, LH2/l;->k:Lp2/b;

    if-eqz p1, :cond_0

    iget-object v1, p0, LH2/l;->j:Lp2/a;

    invoke-static {v1}, Lv3/l;->b(Ljava/lang/Object;)V

    iget-object v2, p0, LH2/l;->g:LH2/a;

    invoke-static {v2}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-interface {v2}, LH2/a;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0}, Lp2/d;->c(I)Lp2/d;

    move-result-object v0

    const/16 v3, 0x4fc

    invoke-interface {p1, v1, v2, v0, v3}, Lp2/b;->b(Lp2/a;Landroid/app/Activity;Lp2/d;I)Z

    :cond_0
    iget-object p1, p0, LH2/l;->k:Lp2/b;

    if-eqz p1, :cond_1

    new-instance v0, LH2/k;

    invoke-direct {v0, p0}, LH2/k;-><init>(LH2/l;)V

    invoke-interface {p1, v0}, Lp2/b;->c(Ls2/b;)V

    :cond_1
    sget-object p0, Lh3/n;->a:Lh3/n;

    return-object p0
.end method

.method public static final B(LH2/l;Lcom/google/android/play/core/install/InstallState;)V
    .locals 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->c()I

    move-result v0

    invoke-virtual {p0, v0}, LH2/l;->m(I)V

    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->c()I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object p1, p0, LH2/l;->h:LY2/j$d;

    if-eqz p1, :cond_0

    invoke-interface {p1, v2}, LY2/j$d;->a(Ljava/lang/Object;)V

    :cond_0
    iput-object v2, p0, LH2/l;->h:LY2/j$d;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->b()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LH2/l;->h:LY2/j$d;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Error during installation"

    invoke-interface {v0, v1, p1, v2}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iput-object v2, p0, LH2/l;->h:LY2/j$d;

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic c(LH2/l;LY2/j$d;)Lh3/n;
    .locals 0

    invoke-static {p0, p1}, LH2/l;->y(LH2/l;LY2/j$d;)Lh3/n;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(LY2/j$d;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, LH2/l;->r(LY2/j$d;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic e(Lu3/l;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, LH2/l;->q(Lu3/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(LH2/l;Landroid/app/Activity;Lp2/a;)Lh3/n;
    .locals 0

    invoke-static {p0, p1, p2}, LH2/l;->u(LH2/l;Landroid/app/Activity;Lp2/a;)Lh3/n;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(LH2/l;Lcom/google/android/play/core/install/InstallState;)V
    .locals 0

    invoke-static {p0, p1}, LH2/l;->B(LH2/l;Lcom/google/android/play/core/install/InstallState;)V

    return-void
.end method

.method public static synthetic h(LH2/l;LY2/j$d;)Lh3/n;
    .locals 0

    invoke-static {p0, p1}, LH2/l;->A(LH2/l;LY2/j$d;)Lh3/n;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(LH2/l;LY2/j$d;Lp2/a;)Lh3/n;
    .locals 0

    invoke-static {p0, p1, p2}, LH2/l;->p(LH2/l;LY2/j$d;Lp2/a;)Lh3/n;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lu3/l;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, LH2/l;->v(Lu3/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic k(LH2/l;Lcom/google/android/play/core/install/InstallState;)V
    .locals 0

    invoke-static {p0, p1}, LH2/l;->w(LH2/l;Lcom/google/android/play/core/install/InstallState;)V

    return-void
.end method

.method public static synthetic l(LH2/l;)Lh3/n;
    .locals 0

    invoke-static {p0}, LH2/l;->t(LH2/l;)Lh3/n;

    move-result-object p0

    return-object p0
.end method

.method public static final p(LH2/l;LY2/j$d;Lp2/a;)Lh3/n;
    .locals 11

    iput-object p2, p0, LH2/l;->j:Lp2/a;

    invoke-virtual {p2}, Lp2/a;->h()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "updateAvailability"

    invoke-static {v0, p0}, Lh3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh3/g;

    move-result-object v1

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lp2/a;->e(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "immediateAllowed"

    invoke-static {v2, v0}, Lh3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh3/g;

    move-result-object v2

    invoke-static {p0}, Lp2/d;->c(I)Lp2/d;

    move-result-object p0

    invoke-virtual {p2, p0}, Lp2/a;->c(Lp2/d;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "getFailedUpdatePreconditions(...)"

    invoke-static {p0, v0}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p0, v4}, Li3/p;->m(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v3}, Li3/w;->I(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    const-string v3, "immediateAllowedPreconditions"

    invoke-static {v3, p0}, Lh3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh3/g;

    move-result-object v3

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lp2/a;->e(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "flexibleAllowed"

    invoke-static {v6, v5}, Lh3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh3/g;

    move-result-object v5

    invoke-static {p0}, Lp2/d;->c(I)Lp2/d;

    move-result-object p0

    invoke-virtual {p2, p0}, Lp2/a;->c(Lp2/d;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, v4}, Li3/p;->m(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0}, Li3/w;->I(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    const-string v0, "flexibleAllowedPreconditions"

    invoke-static {v0, p0}, Lh3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh3/g;

    move-result-object p0

    invoke-virtual {p2}, Lp2/a;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "availableVersionCode"

    invoke-static {v4, v0}, Lh3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh3/g;

    move-result-object v6

    invoke-virtual {p2}, Lp2/a;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "installStatus"

    invoke-static {v4, v0}, Lh3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh3/g;

    move-result-object v7

    const-string v0, "packageName"

    invoke-virtual {p2}, Lp2/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lh3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh3/g;

    move-result-object v8

    const-string v0, "clientVersionStalenessDays"

    invoke-virtual {p2}, Lp2/a;->b()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lh3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh3/g;

    move-result-object v9

    invoke-virtual {p2}, Lp2/a;->i()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "updatePriority"

    invoke-static {v0, p2}, Lh3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh3/g;

    move-result-object v10

    move-object v4, v5

    move-object v5, p0

    filled-new-array/range {v1 .. v10}, [Lh3/g;

    move-result-object p0

    invoke-static {p0}, Li3/E;->i([Lh3/g;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1, p0}, LY2/j$d;->a(Ljava/lang/Object;)V

    sget-object p0, Lh3/n;->a:Lh3/n;

    return-object p0
.end method

.method public static final q(Lu3/l;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final r(LY2/j$d;Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "TASK_FAILURE"

    invoke-interface {p0, v1, p1, v0}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static final t(LH2/l;)Lh3/n;
    .locals 0

    iget-object p0, p0, LH2/l;->k:Lp2/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lp2/b;->d()LR1/f;

    :cond_0
    sget-object p0, Lh3/n;->a:Lh3/n;

    return-object p0
.end method

.method public static final u(LH2/l;Landroid/app/Activity;Lp2/a;)Lh3/n;
    .locals 2

    invoke-virtual {p2}, Lp2/a;->h()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LH2/l;->i:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :try_start_0
    iget-object p0, p0, LH2/l;->k:Lp2/b;

    if-eqz p0, :cond_1

    const/16 v0, 0x4fc

    invoke-interface {p0, p2, v1, p1, v0}, Lp2/b;->f(Lp2/a;ILandroid/app/Activity;I)Z
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "in_app_update"

    const-string p2, "Could not start update flow"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    sget-object p0, Lh3/n;->a:Lh3/n;

    return-object p0
.end method

.method public static final v(Lu3/l;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final w(LH2/l;Lcom/google/android/play/core/install/InstallState;)V
    .locals 1

    const-string v0, "installState"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->c()I

    move-result p1

    invoke-virtual {p0, p1}, LH2/l;->m(I)V

    return-void
.end method

.method public static final y(LH2/l;LY2/j$d;)Lh3/n;
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, LH2/l;->i:Ljava/lang/Integer;

    iput-object p1, p0, LH2/l;->h:LY2/j$d;

    iget-object p1, p0, LH2/l;->k:Lp2/b;

    if-eqz p1, :cond_0

    iget-object v1, p0, LH2/l;->j:Lp2/a;

    invoke-static {v1}, Lv3/l;->b(Ljava/lang/Object;)V

    iget-object p0, p0, LH2/l;->g:LH2/a;

    invoke-static {p0}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-interface {p0}, LH2/a;->b()Landroid/app/Activity;

    move-result-object p0

    invoke-static {v0}, Lp2/d;->c(I)Lp2/d;

    move-result-object v0

    const/16 v2, 0x4fc

    invoke-interface {p1, v1, p0, v0, v2}, Lp2/b;->b(Lp2/a;Landroid/app/Activity;Lp2/d;I)Z

    :cond_0
    sget-object p0, Lh3/n;->a:Lh3/n;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;LY2/c$b;)V
    .locals 0

    iput-object p2, p0, LH2/l;->f:LY2/c$b;

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, LH2/l;->f:LY2/c$b;

    return-void
.end method

.method public final m(I)V
    .locals 1

    iget-object v0, p0, LH2/l;->f:LY2/c$b;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, LY2/c$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final n(LY2/j$d;Lu3/a;)V
    .locals 4

    iget-object v0, p0, LH2/l;->j:Lp2/a;

    const-string v1, "Call checkForUpdate first!"

    const-string v2, "REQUIRE_CHECK_FOR_UPDATE"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, LH2/l;->g:LH2/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LH2/a;->b()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, LH2/l;->k:Lp2/b;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lu3/a;->c()Ljava/lang/Object;

    return-void

    :cond_1
    invoke-interface {p1, v2, v1, v3}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-string p2, "REQUIRE_FOREGROUND_ACTIVITY"

    const-string v0, "in_app_update requires a foreground activity"

    invoke-interface {p1, p2, v0, v3}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    invoke-interface {p1, v2, v1, v3}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final o(LY2/j$d;)V
    .locals 3

    iget-object v0, p0, LH2/l;->g:LH2/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, LH2/a;->b()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, LH2/l;->g:LH2/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, LH2/a;->a(LY2/l;)V

    :cond_1
    iget-object v0, p0, LH2/l;->g:LH2/a;

    if-eqz v0, :cond_2

    invoke-interface {v0}, LH2/a;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_2
    iget-object v0, p0, LH2/l;->g:LH2/a;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, LH2/a;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lp2/c;->a(Landroid/content/Context;)Lp2/b;

    move-result-object v0

    iput-object v0, p0, LH2/l;->k:Lp2/b;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Lp2/b;->e()LR1/f;

    move-result-object v0

    const-string v1, "getAppUpdateInfo(...)"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LH2/g;

    invoke-direct {v1, p0, p1}, LH2/g;-><init>(LH2/l;LY2/j$d;)V

    new-instance v2, LH2/h;

    invoke-direct {v2, v1}, LH2/h;-><init>(Lu3/l;)V

    invoke-virtual {v0, v2}, LR1/f;->d(LR1/d;)LR1/f;

    new-instance v1, LH2/i;

    invoke-direct {v1, p1}, LH2/i;-><init>(LY2/j$d;)V

    invoke-virtual {v0, v1}, LR1/f;->c(LR1/c;)LR1/f;

    return-void

    :cond_3
    const-string v0, "REQUIRE_FOREGROUND_ACTIVITY"

    const-string v2, "in_app_update requires a foreground activity"

    invoke-interface {p1, v0, v2, v1}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    const/16 p3, 0x4fc

    if-ne p1, p3, :cond_b

    iget-object p1, p0, LH2/l;->i:Ljava/lang/Integer;

    const-string p3, "USER_DENIED_UPDATE"

    const-string v0, "IN_APP_UPDATE_FAILED"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_5

    const/4 p1, -0x1

    if-eq p2, p1, :cond_3

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LH2/l;->h:LY2/j$d;

    if-eqz p1, :cond_4

    const-string p2, "Some other error prevented either the user from providing consent or the update to proceed."

    invoke-interface {p1, v0, p2, v2}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, LH2/l;->h:LY2/j$d;

    if-eqz p1, :cond_4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2, v2}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, LH2/l;->h:LY2/j$d;

    if-eqz p1, :cond_4

    invoke-interface {p1, v2}, LY2/j$d;->a(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    iput-object v2, p0, LH2/l;->h:LY2/j$d;

    return v1

    :cond_5
    :goto_1
    iget-object p1, p0, LH2/l;->i:Ljava/lang/Integer;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_b

    if-eqz p2, :cond_9

    if-eq p2, v1, :cond_7

    goto :goto_2

    :cond_7
    iget-object p1, p0, LH2/l;->h:LY2/j$d;

    if-eqz p1, :cond_8

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2, v2}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    iput-object v2, p0, LH2/l;->h:LY2/j$d;

    goto :goto_2

    :cond_9
    iget-object p1, p0, LH2/l;->h:LY2/j$d;

    if-eqz p1, :cond_a

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2, v2}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    iput-object v2, p0, LH2/l;->h:LY2/j$d;

    :goto_2
    return v1

    :cond_b
    :goto_3
    const/4 p1, 0x0

    return p1
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LH2/l;->k:Lp2/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lp2/b;->e()LR1/f;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, LH2/c;

    invoke-direct {v1, p0, p1}, LH2/c;-><init>(LH2/l;Landroid/app/Activity;)V

    new-instance p1, LH2/d;

    invoke-direct {p1, v1}, LH2/d;-><init>(Lu3/l;)V

    invoke-virtual {v0, p1}, LR1/f;->d(LR1/d;)LR1/f;

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p2, p1}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAttachedToActivity(LU2/c;)V
    .locals 1

    const-string v0, "activityPluginBinding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LH2/l$b;

    invoke-direct {v0, p1}, LH2/l$b;-><init>(LU2/c;)V

    iput-object v0, p0, LH2/l;->g:LH2/a;

    return-void
.end method

.method public onAttachedToEngine(LT2/a$b;)V
    .locals 3

    const-string v0, "flutterPluginBinding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LY2/j;

    invoke-virtual {p1}, LT2/a$b;->b()LY2/b;

    move-result-object v1

    const-string v2, "de.ffuf.in_app_update/methods"

    invoke-direct {v0, v1, v2}, LY2/j;-><init>(LY2/b;Ljava/lang/String;)V

    iput-object v0, p0, LH2/l;->c:LY2/j;

    invoke-virtual {v0, p0}, LY2/j;->e(LY2/j$c;)V

    new-instance v0, LY2/c;

    invoke-virtual {p1}, LT2/a$b;->b()LY2/b;

    move-result-object p1

    const-string v1, "de.ffuf.in_app_update/stateEvents"

    invoke-direct {v0, p1, v1}, LY2/c;-><init>(LY2/b;Ljava/lang/String;)V

    iput-object v0, p0, LH2/l;->d:LY2/c;

    invoke-virtual {v0, p0}, LY2/c;->d(LY2/c$d;)V

    new-instance p1, LH2/b;

    invoke-direct {p1, p0}, LH2/b;-><init>(LH2/l;)V

    iput-object p1, p0, LH2/l;->e:Ls2/b;

    iget-object v0, p0, LH2/l;->k:Lp2/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lp2/b;->c(Ls2/b;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LH2/l;->g:LH2/a;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LH2/l;->g:LH2/a;

    return-void
.end method

.method public onDetachedFromEngine(LT2/a$b;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LH2/l;->c:LY2/j;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "channel"

    invoke-static {p1}, Lv3/l;->n(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1, v0}, LY2/j;->e(LY2/j$c;)V

    iget-object p1, p0, LH2/l;->d:LY2/c;

    if-nez p1, :cond_1

    const-string p1, "event"

    invoke-static {p1}, Lv3/l;->n(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p1, v0}, LY2/c;->d(LY2/c$d;)V

    iget-object p1, p0, LH2/l;->k:Lp2/b;

    if-eqz p1, :cond_3

    iget-object v1, p0, LH2/l;->e:Ls2/b;

    if-nez v1, :cond_2

    const-string v1, "installStateUpdatedListener"

    invoke-static {v1}, Lv3/l;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-interface {p1, v0}, Lp2/b;->a(Ls2/b;)V

    :cond_3
    return-void
.end method

.method public onMethodCall(LY2/i;LY2/j$d;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, LY2/i;->a:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "completeFlexibleUpdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, LH2/l;->s(LY2/j$d;)V

    goto :goto_1

    :sswitch_1
    const-string v0, "checkForUpdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, LH2/l;->o(LY2/j$d;)V

    goto :goto_1

    :sswitch_2
    const-string v0, "startFlexibleUpdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, LH2/l;->z(LY2/j$d;)V

    goto :goto_1

    :sswitch_3
    const-string v0, "performImmediateUpdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, LH2/l;->x(LY2/j$d;)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-interface {p2}, LY2/j$d;->c()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6fa969c7 -> :sswitch_3
        -0x5bdc4e8a -> :sswitch_2
        -0x4e826536 -> :sswitch_1
        -0xb88a5f3 -> :sswitch_0
    .end sparse-switch
.end method

.method public onReattachedToActivityForConfigChanges(LU2/c;)V
    .locals 1

    const-string v0, "activityPluginBinding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LH2/l$c;

    invoke-direct {v0, p1}, LH2/l$c;-><init>(LU2/c;)V

    iput-object v0, p0, LH2/l;->g:LH2/a;

    return-void
.end method

.method public final s(LY2/j$d;)V
    .locals 1

    new-instance v0, LH2/e;

    invoke-direct {v0, p0}, LH2/e;-><init>(LH2/l;)V

    invoke-virtual {p0, p1, v0}, LH2/l;->n(LY2/j$d;Lu3/a;)V

    return-void
.end method

.method public final x(LY2/j$d;)V
    .locals 1

    new-instance v0, LH2/j;

    invoke-direct {v0, p0, p1}, LH2/j;-><init>(LH2/l;LY2/j$d;)V

    invoke-virtual {p0, p1, v0}, LH2/l;->n(LY2/j$d;Lu3/a;)V

    return-void
.end method

.method public final z(LY2/j$d;)V
    .locals 1

    new-instance v0, LH2/f;

    invoke-direct {v0, p0, p1}, LH2/f;-><init>(LH2/l;LY2/j$d;)V

    invoke-virtual {p0, p1, v0}, LH2/l;->n(LY2/j$d;Lu3/a;)V

    return-void
.end method
