.class public LB/g;
.super LB/f;
.source "SourceFile"


# instance fields
.field public m:I


# direct methods
.method public constructor <init>(LB/m;)V
    .locals 0

    invoke-direct {p0, p1}, LB/f;-><init>(LB/m;)V

    instance-of p1, p1, LB/j;

    if-eqz p1, :cond_0

    sget-object p1, LB/f$a;->f:LB/f$a;

    iput-object p1, p0, LB/f;->e:LB/f$a;

    goto :goto_0

    :cond_0
    sget-object p1, LB/f$a;->g:LB/f$a;

    iput-object p1, p0, LB/f;->e:LB/f$a;

    :goto_0
    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 1

    iget-boolean v0, p0, LB/f;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LB/f;->j:Z

    iput p1, p0, LB/f;->g:I

    iget-object p1, p0, LB/f;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/d;

    invoke-interface {v0, v0}, LB/d;->a(LB/d;)V

    goto :goto_0

    :cond_1
    return-void
.end method
