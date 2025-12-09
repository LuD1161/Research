.class public La1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public e:LR0/E;

.field public f:LR0/v;

.field public g:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(LR0/E;LR0/v;Landroidx/work/WorkerParameters$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/t;->e:LR0/E;

    iput-object p2, p0, La1/t;->f:LR0/v;

    iput-object p3, p0, La1/t;->g:Landroidx/work/WorkerParameters$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, La1/t;->e:LR0/E;

    invoke-virtual {v0}, LR0/E;->n()LR0/r;

    move-result-object v0

    iget-object v1, p0, La1/t;->f:LR0/v;

    iget-object v2, p0, La1/t;->g:Landroidx/work/WorkerParameters$a;

    invoke-virtual {v0, v1, v2}, LR0/r;->q(LR0/v;Landroidx/work/WorkerParameters$a;)Z

    return-void
.end method
