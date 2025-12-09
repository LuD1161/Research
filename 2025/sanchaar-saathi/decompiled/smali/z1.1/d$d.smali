.class public Lz1/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lz1/d;


# direct methods
.method public constructor <init>(Lz1/d;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lz1/d$d;->a:Lz1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lu1/a;)V
    .locals 2

    invoke-virtual {p1}, Lu1/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lz1/d$d;->a:Lz1/d;

    invoke-virtual {p1}, Lz1/d;->B()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lz1/d;->p(Lz1/j;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object v0, p0, Lz1/d$d;->a:Lz1/d;

    invoke-virtual {v0}, Lz1/d;->d0()Lz1/d$b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lz1/d;->d0()Lz1/d$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lz1/d$b;->onConnectionFailed(Lu1/a;)V

    :cond_1
    return-void
.end method
