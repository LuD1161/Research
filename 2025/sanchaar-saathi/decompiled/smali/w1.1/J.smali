.class public final Lw1/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lw1/M;


# direct methods
.method public constructor <init>(Lw1/M;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lw1/J;->e:Lw1/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lu1/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lu1/a;-><init>(I)V

    iget-object v1, p0, Lw1/J;->e:Lw1/M;

    invoke-virtual {v1}, Lw1/M;->L()Lw1/L;

    move-result-object v1

    invoke-interface {v1, v0}, Lw1/L;->b(Lu1/a;)V

    return-void
.end method
