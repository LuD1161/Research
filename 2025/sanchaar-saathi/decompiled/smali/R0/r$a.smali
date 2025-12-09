.class public LR0/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LR0/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public e:LR0/e;

.field public final f:LZ0/m;

.field public g:Ly2/a;


# direct methods
.method public constructor <init>(LR0/e;LZ0/m;Ly2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR0/r$a;->e:LR0/e;

    iput-object p2, p0, LR0/r$a;->f:LZ0/m;

    iput-object p3, p0, LR0/r$a;->g:Ly2/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, LR0/r$a;->g:Ly2/a;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, LR0/r$a;->e:LR0/e;

    iget-object v2, p0, LR0/r$a;->f:LZ0/m;

    invoke-interface {v1, v2, v0}, LR0/e;->d(LZ0/m;Z)V

    return-void
.end method
