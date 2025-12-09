.class public abstract Lc0/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lc0/v;->a:I

    return-void
.end method

.method public synthetic constructor <init>(ILv3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc0/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lc0/v;->a:I

    return v0
.end method
