.class public final Lw1/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LQ1/l;

.field public final synthetic f:Lw1/M;


# direct methods
.method public constructor <init>(Lw1/M;LQ1/l;)V
    .locals 0

    iput-object p2, p0, Lw1/K;->e:LQ1/l;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lw1/K;->f:Lw1/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lw1/K;->f:Lw1/M;

    iget-object v1, p0, Lw1/K;->e:LQ1/l;

    invoke-virtual {v0, v1}, Lw1/M;->K(LQ1/l;)V

    return-void
.end method
