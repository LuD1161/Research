.class public final LH3/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/e;
.implements Ln3/e;


# instance fields
.field public final e:Ll3/e;

.field public final f:Ll3/i;


# direct methods
.method public constructor <init>(Ll3/e;Ll3/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH3/r;->e:Ll3/e;

    iput-object p2, p0, LH3/r;->f:Ll3/i;

    return-void
.end method


# virtual methods
.method public a()Ll3/i;
    .locals 1

    iget-object v0, p0, LH3/r;->f:Ll3/i;

    return-object v0
.end method

.method public l()Ln3/e;
    .locals 2

    iget-object v0, p0, LH3/r;->e:Ll3/e;

    instance-of v1, v0, Ln3/e;

    if-eqz v1, :cond_0

    check-cast v0, Ln3/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public q(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LH3/r;->e:Ll3/e;

    invoke-interface {v0, p1}, Ll3/e;->q(Ljava/lang/Object;)V

    return-void
.end method
