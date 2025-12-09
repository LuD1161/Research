.class public LD0/p$a;
.super LD0/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD0/p;->Y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LD0/l;

.field public final synthetic b:LD0/p;


# direct methods
.method public constructor <init>(LD0/p;LD0/l;)V
    .locals 0

    iput-object p1, p0, LD0/p$a;->b:LD0/p;

    iput-object p2, p0, LD0/p$a;->a:LD0/l;

    invoke-direct {p0}, LD0/m;-><init>()V

    return-void
.end method


# virtual methods
.method public d(LD0/l;)V
    .locals 1

    iget-object v0, p0, LD0/p$a;->a:LD0/l;

    invoke-virtual {v0}, LD0/l;->Y()V

    invoke-virtual {p1, p0}, LD0/l;->U(LD0/l$f;)LD0/l;

    return-void
.end method
