.class public final Lw1/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR1/b;


# instance fields
.field public final synthetic a:LR1/g;

.field public final synthetic b:Lw1/o;


# direct methods
.method public constructor <init>(Lw1/o;LR1/g;)V
    .locals 0

    iput-object p2, p0, Lw1/b0;->a:LR1/g;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lw1/b0;->b:Lw1/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LR1/f;)V
    .locals 1

    iget-object p1, p0, Lw1/b0;->b:Lw1/o;

    invoke-virtual {p1}, Lw1/o;->g()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lw1/b0;->a:LR1/g;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
