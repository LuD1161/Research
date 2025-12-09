.class public LX2/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LX2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:LX2/f;


# direct methods
.method public constructor <init>(LX2/f;)V
    .locals 0

    iput-object p1, p0, LX2/f$a;->c:LX2/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMethodCall(LY2/i;LY2/j$d;)V
    .locals 0

    const/4 p1, 0x0

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    return-void
.end method
