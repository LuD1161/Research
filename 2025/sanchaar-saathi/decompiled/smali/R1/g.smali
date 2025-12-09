.class public LR1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LR1/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LR1/t;

    invoke-direct {v0}, LR1/t;-><init>()V

    iput-object v0, p0, LR1/g;->a:LR1/t;

    return-void
.end method


# virtual methods
.method public a()LR1/f;
    .locals 1

    iget-object v0, p0, LR1/g;->a:LR1/t;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LR1/g;->a:LR1/t;

    invoke-virtual {v0, p1}, LR1/t;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, LR1/g;->a:LR1/t;

    invoke-virtual {v0, p1}, LR1/t;->o(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LR1/g;->a:LR1/t;

    invoke-virtual {v0, p1}, LR1/t;->m(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
