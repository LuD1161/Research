.class public final LJ0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK0/f;


# instance fields
.field public final b:LK0/f;

.field public final c:LI0/a;


# direct methods
.method public constructor <init>(LK0/f;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, LI0/a;

    invoke-direct {v0}, LI0/a;-><init>()V

    invoke-direct {p0, p1, v0}, LJ0/a;-><init>(LK0/f;LI0/a;)V

    return-void
.end method

.method public constructor <init>(LK0/f;LI0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LJ0/a;->b:LK0/f;

    .line 3
    iput-object p2, p0, LJ0/a;->c:LI0/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)LG3/d;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LJ0/a;->b:LK0/f;

    invoke-interface {v0, p1}, LK0/f;->a(Landroid/app/Activity;)LG3/d;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/app/Activity;Ljava/util/concurrent/Executor;LR/a;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LJ0/a;->c:LI0/a;

    iget-object v1, p0, LJ0/a;->b:LK0/f;

    invoke-interface {v1, p1}, LK0/f;->a(Landroid/app/Activity;)LG3/d;

    move-result-object p1

    invoke-virtual {v0, p2, p3, p1}, LI0/a;->a(Ljava/util/concurrent/Executor;LR/a;LG3/d;)V

    return-void
.end method

.method public final c(LR/a;)V
    .locals 1

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LJ0/a;->c:LI0/a;

    invoke-virtual {v0, p1}, LI0/a;->b(LR/a;)V

    return-void
.end method
