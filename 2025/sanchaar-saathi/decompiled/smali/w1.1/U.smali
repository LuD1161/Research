.class public final Lw1/U;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lu1/a;


# direct methods
.method public constructor <init>(Lu1/a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lw1/U;->b:Lu1/a;

    iput p2, p0, Lw1/U;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lw1/U;->a:I

    return v0
.end method

.method public final b()Lu1/a;
    .locals 1

    iget-object v0, p0, Lw1/U;->b:Lu1/a;

    return-object v0
.end method
