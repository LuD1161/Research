.class public La1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final h:Ljava/lang/String;


# instance fields
.field public final e:LR0/E;

.field public final f:LR0/v;

.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "StopWorkRunnable"

    invoke-static {v0}, LQ0/i;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La1/u;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LR0/E;LR0/v;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/u;->e:LR0/E;

    iput-object p2, p0, La1/u;->f:LR0/v;

    iput-boolean p3, p0, La1/u;->g:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-boolean v0, p0, La1/u;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La1/u;->e:LR0/E;

    invoke-virtual {v0}, LR0/E;->n()LR0/r;

    move-result-object v0

    iget-object v1, p0, La1/u;->f:LR0/v;

    invoke-virtual {v0, v1}, LR0/r;->t(LR0/v;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La1/u;->e:LR0/E;

    invoke-virtual {v0}, LR0/E;->n()LR0/r;

    move-result-object v0

    iget-object v1, p0, La1/u;->f:LR0/v;

    invoke-virtual {v0, v1}, LR0/r;->u(LR0/v;)Z

    move-result v0

    :goto_0
    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v1

    sget-object v2, La1/u;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StopWorkRunnable for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, La1/u;->f:LR0/v;

    invoke-virtual {v4}, LR0/v;->a()LZ0/m;

    move-result-object v4

    invoke-virtual {v4}, LZ0/m;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; Processor.stopWork = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, LQ0/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
