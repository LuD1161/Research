.class public Lf/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lf/b;

.field public final b:Lg/a;


# direct methods
.method public constructor <init>(Lf/b;Lg/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/d$b;->a:Lf/b;

    iput-object p2, p0, Lf/d$b;->b:Lg/a;

    return-void
.end method
