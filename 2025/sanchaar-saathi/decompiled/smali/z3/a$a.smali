.class public final Lz3/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lv3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz3/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)Lz3/a;
    .locals 1

    new-instance v0, Lz3/a;

    invoke-direct {v0, p1, p2, p3}, Lz3/a;-><init>(III)V

    return-object v0
.end method
