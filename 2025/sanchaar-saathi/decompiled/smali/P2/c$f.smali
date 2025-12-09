.class public LP2/c$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LP2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:LY2/b$a;

.field public final b:LP2/c$d;


# direct methods
.method public constructor <init>(LY2/b$a;LP2/c$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP2/c$f;->a:LY2/b$a;

    iput-object p2, p0, LP2/c$f;->b:LP2/c$d;

    return-void
.end method
