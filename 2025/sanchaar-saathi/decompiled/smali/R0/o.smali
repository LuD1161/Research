.class public LR0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ0/l;


# instance fields
.field public final c:Landroidx/lifecycle/r;

.field public final d:Lb1/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    iput-object v0, p0, LR0/o;->c:Landroidx/lifecycle/r;

    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object v0

    iput-object v0, p0, LR0/o;->d:Lb1/c;

    sget-object v0, LQ0/l;->b:LQ0/l$b$b;

    invoke-virtual {p0, v0}, LR0/o;->a(LQ0/l$b;)V

    return-void
.end method


# virtual methods
.method public a(LQ0/l$b;)V
    .locals 1

    iget-object v0, p0, LR0/o;->c:Landroidx/lifecycle/r;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/r;->h(Ljava/lang/Object;)V

    instance-of v0, p1, LQ0/l$b$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, LR0/o;->d:Lb1/c;

    check-cast p1, LQ0/l$b$c;

    invoke-virtual {v0, p1}, Lb1/c;->p(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v0, p1, LQ0/l$b$a;

    if-eqz v0, :cond_1

    check-cast p1, LQ0/l$b$a;

    iget-object v0, p0, LR0/o;->d:Lb1/c;

    invoke-virtual {p1}, LQ0/l$b$a;->a()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-void
.end method
