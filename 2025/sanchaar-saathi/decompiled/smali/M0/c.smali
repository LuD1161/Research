.class public final LM0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL0/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(LR/a;)V
    .locals 0

    invoke-static {p0}, LM0/c;->d(LR/a;)V

    return-void
.end method

.method public static final d(LR/a;)V
    .locals 2

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LK0/j;

    invoke-static {}, Li3/o;->h()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, LK0/j;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, LR/a;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/concurrent/Executor;LR/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "executor"

    invoke-static {p2, p1}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p3, p1}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LM0/b;

    invoke-direct {p1, p3}, LM0/b;-><init>(LR/a;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(LR/a;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
