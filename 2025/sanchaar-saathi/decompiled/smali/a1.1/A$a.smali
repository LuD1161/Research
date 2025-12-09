.class public La1/A$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La1/A;->a(Landroid/content/Context;Ljava/util/UUID;LQ0/e;)Ly2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lb1/c;

.field public final synthetic f:Ljava/util/UUID;

.field public final synthetic g:LQ0/e;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:La1/A;


# direct methods
.method public constructor <init>(La1/A;Lb1/c;Ljava/util/UUID;LQ0/e;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, La1/A$a;->i:La1/A;

    iput-object p2, p0, La1/A$a;->e:Lb1/c;

    iput-object p3, p0, La1/A$a;->f:Ljava/util/UUID;

    iput-object p4, p0, La1/A$a;->g:LQ0/e;

    iput-object p5, p0, La1/A$a;->h:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, La1/A$a;->e:Lb1/c;

    invoke-virtual {v0}, Lb1/a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, La1/A$a;->f:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La1/A$a;->i:La1/A;

    iget-object v1, v1, La1/A;->c:LZ0/v;

    invoke-interface {v1, v0}, LZ0/v;->m(Ljava/lang/String;)LZ0/u;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, LZ0/u;->b:LQ0/s;

    invoke-virtual {v2}, LQ0/s;->f()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, La1/A$a;->i:La1/A;

    iget-object v2, v2, La1/A;->b:LY0/a;

    iget-object v3, p0, La1/A$a;->g:LQ0/e;

    invoke-interface {v2, v0, v3}, LY0/a;->b(Ljava/lang/String;LQ0/e;)V

    iget-object v0, p0, La1/A$a;->h:Landroid/content/Context;

    invoke-static {v1}, LZ0/x;->a(LZ0/u;)LZ0/m;

    move-result-object v1

    iget-object v2, p0, La1/A$a;->g:LQ0/e;

    invoke-static {v0, v1, v2}, Landroidx/work/impl/foreground/a;->c(Landroid/content/Context;LZ0/m;LQ0/e;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, La1/A$a;->h:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, La1/A$a;->e:Lb1/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb1/c;->p(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    iget-object v1, p0, La1/A$a;->e:Lb1/c;

    invoke-virtual {v1, v0}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    :goto_2
    return-void
.end method
