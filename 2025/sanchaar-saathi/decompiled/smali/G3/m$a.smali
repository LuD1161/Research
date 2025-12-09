.class public final LG3/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG3/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG3/m;->a(LG3/d;Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lv3/w;


# direct methods
.method public constructor <init>(Lv3/w;)V
    .locals 0

    iput-object p1, p0, LG3/m$a;->e:Lv3/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;
    .locals 0

    iget-object p2, p0, LG3/m$a;->e:Lv3/w;

    iput-object p1, p2, Lv3/w;->e:Ljava/lang/Object;

    new-instance p1, LH3/a;

    invoke-direct {p1, p0}, LH3/a;-><init>(LG3/e;)V

    throw p1
.end method
