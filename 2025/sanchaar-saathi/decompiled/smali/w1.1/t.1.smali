.class public final Lw1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lw1/w;


# direct methods
.method public constructor <init>(Lw1/w;I)V
    .locals 0

    iput p2, p0, Lw1/t;->e:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lw1/t;->f:Lw1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lw1/t;->f:Lw1/w;

    iget v1, p0, Lw1/t;->e:I

    invoke-virtual {v0, v1}, Lw1/w;->F(I)V

    return-void
.end method
