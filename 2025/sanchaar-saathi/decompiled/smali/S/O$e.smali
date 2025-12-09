.class public LS/O$e;
.super LS/O$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LS/O$d;-><init>()V

    return-void
.end method

.method public constructor <init>(LS/O;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LS/O$d;-><init>(LS/O;)V

    return-void
.end method
