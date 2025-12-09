.class public LO2/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT2/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LO2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:LR2/d;


# direct methods
.method public constructor <init>(LR2/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LO2/b$b;->a:LR2/d;

    return-void
.end method

.method public synthetic constructor <init>(LR2/d;LO2/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LO2/b$b;-><init>(LR2/d;)V

    return-void
.end method
